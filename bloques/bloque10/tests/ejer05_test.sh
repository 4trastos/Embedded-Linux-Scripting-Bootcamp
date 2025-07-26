#!/bin/sh

start=$(date +%s)
output=$("$1")
end=$(date +%s)
elapsed=$((end - start))

if echo "$output" | grep -q "Tarea 1 iniciada" && \
   echo "$output" | grep -q "Tarea 2 iniciada" && \
   echo "$output" | grep -q "Tarea 3 iniciada" && \
   [ "$elapsed" -lt 5 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Las tareas no se ejecutaron en paralelo correctamente o salida inválida"
fi
