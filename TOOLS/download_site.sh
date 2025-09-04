#!/bin/bash
# Check if the URL is provided
if [ -z "$1" ]; then
		echo "Usage: $0 <website_url> [cookies_file]"
		echo "Example: $0 https://example.com cookies.txt"
		exit 1
fi

URL="$1"
COOKIES="$2"

# Output folder will be named after the domain
OUTPUT_DIR=$(echo "$URL" | sed 's~https\?://~~' | sed 's~/.*~~')

echo "Starting full site download for: $URL"
echo "Saving to Folder: $OUTPUT_DIR"

# Base wget command
WGET_CMD="wget --mirror --convert-links --adjust-extension --page-requisites --no-parent --directory-prefix=$OUTPUT_DIR"

# If cookies file is provided, include it
if [ -n "$COOKIES" ]; then
		WGET_CMD="$WGET_CMD --load-cookies $COOKIES"
		echo "Using cookies from: $COOKIES"
fi

# Run the command
$WGET_CMD "$URL"

echo "Download complete!"
echo "Open $OUTPUT_DIR/index.html in your browser to view offline."
