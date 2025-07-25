#!/bin/sh
"$1"
if [ $? -eq 1 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba código de salida 1"
fi
