#!/bin/sh
touch archivo_test.tmp
"$1" ls | grep -q "archivo_test.tmp"
res=$?
rm archivo_test.tmp

if [ $res -eq 0 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se ejecutó el comando correctamente"
fi
