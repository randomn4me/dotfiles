#!/bin/bash

# Simple sendmail wrapper that converts markdown to HTML
# Sends HTML-only emails (no multipart)

# Create temp directory
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

# Save the original email
cat > "$TMPDIR/original.eml"

# Extract headers and body
while IFS= read -r line; do
    if [[ -z "$line" || "$line" == $'\r' ]]; then
        break
    fi
    # Skip Content-Type and Content-Transfer-Encoding as we'll set our own
    if [[ ! "$line" =~ ^Content-Type: ]] && [[ ! "$line" =~ ^Content-Transfer-Encoding: ]]; then
        echo "$line"
    fi
done < "$TMPDIR/original.eml" > "$TMPDIR/headers"

# Extract body (everything after the empty line)
awk 'BEGIN{body=0} /^$/{body=1; next} body{print}' "$TMPDIR/original.eml" > "$TMPDIR/body.md"

# Convert markdown to HTML
pandoc -s -f gfm --embed-resources --standalone -o "$TMPDIR/body.html" \
  --template=/Users/pkuehn/.config/neomutt/templates/email.html \
  "$TMPDIR/body.md" 2>/dev/null

# Check if HTML conversion succeeded
if [[ -f "$TMPDIR/body.html" ]] && [[ -s "$TMPDIR/body.html" ]]; then
    # Send as HTML email
    {
        cat "$TMPDIR/headers"
        echo "Content-Type: text/html; charset=UTF-8"
        echo "Content-Transfer-Encoding: quoted-printable"
        echo "MIME-Version: 1.0"
        echo ""
        # Encode as quoted-printable
        perl -pe 'use MIME::QuotedPrint; $_=encode_qp($_);' "$TMPDIR/body.html"
    } | /opt/homebrew/bin/msmtp "$@"
else
    # Fallback: send original if conversion fails
    /opt/homebrew/bin/msmtp "$@" < "$TMPDIR/original.eml"
fi