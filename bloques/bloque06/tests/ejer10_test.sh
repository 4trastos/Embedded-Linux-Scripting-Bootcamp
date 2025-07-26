#!/bin/sh
start=$(date +%s)
output=$("$1")
end=$(date +%s)
duration=$((end - start))

if echo "$output" | grep -q "Finalizado" && [ "$duration" -ge 5 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se ejecutó correctamente el proceso en segundo plano o no esperó"
fi
