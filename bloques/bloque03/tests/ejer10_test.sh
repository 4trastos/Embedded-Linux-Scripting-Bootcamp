#!/bin/sh
output=$("$1")
if [ "$output" = "Factorial de 5 es: 120" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Resultado incorrecto. Esperado 'Factorial de 5 es: 120', obtuviste '$output'"
fi
