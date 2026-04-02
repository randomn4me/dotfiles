# Determined AI Shell SSH Helper
   # Fixes SSL certificate verification issue with lomond WebSocket library on macOS
   
   # Connect to a Determined shell via SSH
   det-ssh() {
       local shell_id=$1
       shift
       local extra_args=("$@")
       
       # Configuration - evaluated at call time, not definition time
       # Override with environment variables: DET_MASTER, DET_USER
       local det_master="${DET_MASTER:-https://login01.ai.tu-darmstadt.de:8080}"
       local det_user="${DET_USER:-ba01viny}"
       local cert_file="${HOME}/.config/determined/system-certs.pem"
       local det_python="${HOME}/.local/share/uv/tools/determined/bin/python"
       
       if [[ -z "$shell_id" ]]; then
           echo "Usage: det-ssh <shell_id> [extra ssh args]"
           echo ""
           echo "Example: det-ssh abc123-def456-..."
           echo "         det-ssh abc123-def456-... -L 8888:localhost:8888"
           echo ""
           echo "List available shells with: det shell list"
           echo ""
           echo "Environment variables:"
           echo "  DET_MASTER  - Determined master URL (current: $det_master)"
           echo "  DET_USER    - Determined username (current: $det_user)"
           return 1
       fi
       
       # Ensure certificates are exported
       if [[ ! -f "$cert_file" ]]; then
           echo "Exporting macOS system certificates..."
           mkdir -p "$(dirname "$cert_file")"
           security find-certificate -a -p /System/Library/Keychains/SystemRootCertificates.keychain > "$cert_file"
           security find-certificate -a -p /Library/Keychains/System.keychain >> "$cert_file"
       fi
       
       # Check for determined Python
       if [[ ! -x "$det_python" ]]; then
           echo "ERROR: Could not find determined Python at $det_python"
           echo "Install with: uv tool install determined"
           return 1
       fi
       
       local key_file="${HOME}/Library/Caches/determined/shell/${shell_id}/key"
       
       # Ensure the key exists by calling det shell show-ssh-command first
       if [[ ! -f "$key_file" ]]; then
           echo "Fetching shell key..."
           det shell show-ssh-command "$shell_id" > /dev/null 2>&1
       fi
       
       if [[ ! -f "$key_file" ]]; then
           echo "ERROR: Could not find SSH key for shell $shell_id"
           echo "Make sure the shell exists: det shell list"
           return 1
       fi
       
       ssh -o "ProxyCommand=${det_python} -m determined.cli.tunnel --cert-file ${cert_file} --auth ${det_master} %h" \
           -o StrictHostKeyChecking=no \
           -o IdentitiesOnly=yes \
           -tt \
           -i "$key_file" \
           "${extra_args[@]}" \
           "${det_user}@${shell_id}"
   }
   
   # Start a new shell and connect to it
   det-shell-start() {
       local workspace="${1:-AudaxSecurity}"
       local config_file="$2"
       
       echo "Starting new Determined shell in workspace: $workspace"
       
       local output
       if [[ -n "$config_file" && -f "$config_file" ]]; then
           output=$(det shell start -w "$workspace" -d --config-file "$config_file" 2>&1)
       else
           output=$(det shell start -w "$workspace" -d 2>&1)
       fi
       
       local shell_id=$(echo "$output" | grep -oE '[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}')
       
       if [[ -z "$shell_id" ]]; then
           echo "ERROR: Failed to start shell"
           echo "$output"
           return 1
       fi
       
       echo "Shell started: $shell_id"
       echo "Waiting for shell to be ready..."
       sleep 3
       
       det-ssh "$shell_id"
   }
   
   # Quick connect to most recent shell
   det-ssh-last() {
       local shell_id=$(det shell list 2>/dev/null | grep RUNNING | head -1 | awk '{print $1}')
       
       if [[ -z "$shell_id" ]]; then
           echo "No running shells found. Start one with: det shell start"
           return 1
       fi
       
       echo "Connecting to shell: $shell_id"
       det-ssh "$shell_id" "$@"
   }
