#!/bin/sh
mkdir -p testdir
output=$("$1" testdir)
rm -r testdir

if [ "$output" = "Directorio encontrado" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba 'Directorio encontrado'"
fi
