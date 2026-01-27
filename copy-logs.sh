#!/bin/bash
# Copy log files from Google Drive Logs folder into repo logs/,
# moving the leading timestamp to the end of the filename.
#
# Before: 202411041500-optimizing-llm-prompts.promptEngineering.md
# After:  optimizing-llm-prompts.promptEngineering.202411041500.md

SRC="/Users/alex/Library/CloudStorage/GoogleDrive-oleksiitrotchenko@gmail.com/My Drive/Logs "
DEST="$(dirname "$0")/logs"

mkdir -p "$DEST"

count=0
skipped=0

for f in "$SRC"/*; do
  basename="$(basename "$f")"

  if [[ "$basename" =~ ^([0-9]{12})-(.+)$ ]]; then
    timestamp="${BASH_REMATCH[1]}"
    rest="${BASH_REMATCH[2]}"
    ext="${rest##*.}"
    name="${rest%.*}"
    newname="${name}.${timestamp}.${ext}"
  else
    newname="$basename"
  fi

  cp "$f" "$DEST/$newname"
  ((count++))
done

echo "Copied $count files to $DEST"
