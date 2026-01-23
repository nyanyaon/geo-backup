#!/bin/bash
find . -type f -name "*.zip" -exec sh -c '
for zipfile do
    dir="${zipfile%.*}"
    mkdir -p "$dir"
    unzip -o "$zipfile" -d "$dir"
done
' sh {} +
