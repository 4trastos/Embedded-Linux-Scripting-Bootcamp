#!/bin/bash
touch testfile.tmp
output=$("$1" testfile.tmp)
rm testfile.tmp

if [ "$output" = "Existe" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba 'Existe'"
fi
