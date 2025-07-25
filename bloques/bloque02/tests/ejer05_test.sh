#!/bin/sh
dir="tests/test_dir"
rm -rf "$dir"
"$1" "$dir"
if [ -d "$dir" ]; then
    echo "✅ PASS"
    rm -rf "$dir"
else
    echo "❌ FAIL: No se creó el directorio '$dir'"
fi
