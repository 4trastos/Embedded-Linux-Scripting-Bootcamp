#!/bin/sh

output1=$("$1" 192.168.0.1)
output2=$("$1" abc.def.ghi.jkl)

if echo "$output1" | grep -q "Formato válido" && echo "$output2" | grep -q "Formato inválido"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: La validación del formato IP no funciona correctamente"
fi
