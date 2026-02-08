#!/bin/bash
set -euo pipefail

if [ -z "${VERSION:-}" ]; then
    echo "VERSION environment variable is not set." >&2
    exit 1
fi

FILES_TO_UPDATE=(
    "action.yml"
    "examples/example.yml"
)

for file in "${FILES_TO_UPDATE[@]}"; do
    if [ -f "$file" ]; then
        sed -i "s/urmzd\/embed-md@v[^ ]*/urmzd\/embed-md@v$VERSION/g" "$file"
        sed -i "s/urmzd\/embed-md:[^ ]*/urmzd\/embed-md:$VERSION/g" "$file"
    fi
done

echo "Version update completed."
