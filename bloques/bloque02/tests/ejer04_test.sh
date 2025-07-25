#!/bin/sh
testfile="tests/ejer04_test_file.txt"
echo -e "Linea 1\nLinea 2\nLinea 3" > "$testfile"
output=$("$1" "$testfile")
expected=3
rm "$testfile"
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected' líneas, pero se obtuvo '$output'"
fi
