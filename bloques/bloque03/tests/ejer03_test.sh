#!/bin/sh
touch testfile1 testfile2
mkdir testdir
output=$("$1")
rm -f testfile1 testfile2
rmdir testdir

if echo "$output" | grep -q "testfile1" && echo "$output" | grep -q "testfile2" && ! echo "$output" | grep -q "testdir"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El script debe mostrar solo archivos regulares"
fi
