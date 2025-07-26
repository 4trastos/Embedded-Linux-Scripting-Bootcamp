#!/bin/bash
rm -f lista.txt
"$1"
if [ -f lista.txt ] && [ -s lista.txt ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El archivo 'lista.txt' no fue creado o está vacío"
fi
