#!/bin/bash
rm -f tempfile.txt
"$1"
if [ -f tempfile.txt ]; then
    contenido=$(cat tempfile.txt)
    if [ "$contenido" = "archivo temporal creado" ]; then
        echo "✅ PASS"
    else
        echo "❌ FAIL: El archivo existe pero el contenido es incorrecto"
    fi
else
    echo "❌ FAIL: El archivo no fue creado"
fi
