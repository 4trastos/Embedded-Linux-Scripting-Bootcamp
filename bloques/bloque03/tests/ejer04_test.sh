#!/bin/bash
echo "line 1" > file1.txt
echo "line 1\nline 2" > file2.txt
output=$("$1")
rm file1.txt file2.txt

if echo "$output" | grep -q "file1.txt: 1 líneas" && echo "$output" | grep -q "file2.txt: 2 líneas"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Revisa el formato y conteo de líneas"
fi
