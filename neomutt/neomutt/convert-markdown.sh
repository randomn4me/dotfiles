#!/bin/bash

# Convert markdown email to multipart/alternative (plain text + HTML)
# This script reads the email from stdin and generates NeoMutt commands

# Create temp files
TMPDIR=$(mktemp -d)
trap "rm -rf $TMPDIR" EXIT

# Read the email from stdin
cat > "$TMPDIR/original.eml"

# Extract headers and body
awk '/^$/{body=1; next} body{print}' "$TMPDIR/original.eml" > "$TMPDIR/body.md"
awk '/^$/{exit} {print}' "$TMPDIR/original.eml" > "$TMPDIR/headers"

# Convert markdown to plain text (well-formatted)
pandoc -f gfm -t plain --wrap=auto --columns=72 "$TMPDIR/body.md" > "$TMPDIR/body.txt"

# Convert markdown to HTML
pandoc -s -f gfm --embed-resources --standalone -o "$TMPDIR/body.html" \
  --template=/Users/pkuehn/.config/neomutt/templates/email.html \
  "$TMPDIR/body.md"

# Generate NeoMutt commands to attach the files
cat <<EOF
<first-entry>
<filter-entry>cat "$TMPDIR/body.txt"<enter>
<attach-file>$TMPDIR/body.html<enter>
<toggle-disposition>
<tag-entry><previous-entry><tag-entry>
<group-alternatives>
EOF