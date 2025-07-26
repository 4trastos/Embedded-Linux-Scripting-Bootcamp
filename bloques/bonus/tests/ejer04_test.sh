#!/bin/bash

SCRIPT="./soluciones/ejercicio04.sh"

output=$($SCRIPT)

# Verificar que contiene "Usuarios conectados:"
if echo "$output" | grep -q "Usuarios conectados:" && \
   echo "$output" | grep -q "Lista:"; then
    echo "✅ Resumen usuarios generado correctamente."
    exit 0
else
    echo "❌ Resumen usuarios no válido."
    exit 1
fi
