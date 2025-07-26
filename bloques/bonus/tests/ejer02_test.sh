#!/bin/bash

SCRIPT="./soluciones/ejercicio02.sh"

# Proceso de prueba: sleep 300 (durará 5 min)
PROC_NAME="sleep_test_monitor"
# Comando para simular proceso: sleep 300

# Asegurar que no está corriendo
pkill -f "$PROC_NAME" 2>/dev/null

# Ejecutar el script - debe iniciar proceso porque no existe
output=$($SCRIPT "$PROC_NAME")

# Verificar mensaje
if echo "$output" | grep -q "no encontrado"; then
    # Lanzar el proceso simulado en background para test
    $PROC_NAME 300 &
    sleep 1
    echo "✅ Proceso no activo detectado y mensaje correcto."
else
    echo "❌ No detectó proceso inactivo correctamente."
    exit 1
fi

# Ejecutar el script de nuevo - esta vez debería detectar que está activo
output2=$($SCRIPT "$PROC_NAME")

if echo "$output2" | grep -q "ya está activo"; then
    echo "✅ Proceso activo detectado correctamente."
    exit 0
else
    echo "❌ No detectó proceso activo correctamente."
    exit 1
fi
