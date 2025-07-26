#!/bin/bash

SCRIPT="./soluciones/ejercicio10.sh"

output=$($SCRIPT)

if echo "$output" | grep -q "root" && echo "$output" | grep -q "-" ; then
    echo "✅ Listado de procesos por usuario correcto."
    exit 0
else
    echo "❌ Listado de procesos por usuario incorrecto."
    exit 1
fi
