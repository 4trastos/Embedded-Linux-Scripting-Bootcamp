#!/bin/bash

SCRIPT="./soluciones/ejercicio01.sh"
FAKE_DIR="/tmp/test_logs_11_01"
mkdir -p "$FAKE_DIR"

# Crear logs con diferentes fechas
touch -d "10 days ago" "$FAKE_DIR/old1.log"
touch -d "8 days ago" "$FAKE_DIR/old2.log"
touch -d "5 days ago" "$FAKE_DIR/new1.log"
touch -d "today" "$FAKE_DIR/new2.log"

# Ejecutar el script
output=$($SCRIPT "$FAKE_DIR" 2>&1)

# Verificar resultado
count=$(echo "$output" | grep -oE '[0-9]+' | head -1)

if [[ "$count" == "2" ]] && \
   [[ -f "$FAKE_DIR/new1.log" ]] && \
   [[ -f "$FAKE_DIR/new2.log" ]] && \
   [[ ! -f "$FAKE_DIR/old1.log" ]] && \
   [[ ! -f "$FAKE_DIR/old2.log" ]]; then
    echo "✅ Ejercicio 11.01 superado correctamente."
    exit 0
else
    echo "❌ Fallo en el ejercicio 11.01."
    echo "Esperado: 2 archivos eliminados. Verifica el uso de 'find'."
    exit 1
fi
