#!/bin/bash
rm -f /tmp/output.txt
"$1" "hola mundo"
grep -q "hola mundo" /tmp/output.txt && echo "✅ PASS" || echo "❌ FAIL: texto no encontrado"
