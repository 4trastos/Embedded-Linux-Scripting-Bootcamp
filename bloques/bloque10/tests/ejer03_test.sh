#!/bin/sh

tmp_dir=$(mktemp -d)
echo "Uno dos tres" > "$tmp_dir/a.txt"
echo "Cuatro cinco" > "$tmp_dir/b.txt"

output=$("$1" "$tmp_dir")
expected=5
rm -r "$tmp_dir"

if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaban $expected palabras, pero se obtuvo '$output'"
fi
