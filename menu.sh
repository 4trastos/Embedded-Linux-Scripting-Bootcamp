#!/bin/bash

clear
echo "========================================"
echo "🧠 Embedded Linux Scripting Bootcamp"
echo "========================================"
echo ""
echo "Bienvenido a tu programa de entrenamiento intensivo"
echo "para convertirte en maestro del scripting en sistemas"
echo "Embedded Linux. Avanza bloque a bloque. ¡100 ejercicios!"
echo ""
echo "📘 Cada bloque contiene 10 ejercicios prácticos."
echo "🔒 No puedes acceder a un bloque sin terminar el anterior."
echo ""

# Descripciones de bloques
descripciones=(
    "Fundamentos del Shell (echo, chmod, ejecución básica)"
    "Variables, argumentos, condicionales"
    "Loops, funciones y scripts modulares"
    "Manejo de archivos y redirecciones"
    "Procesos, señales y background jobs"
    "Manipulación de texto y filtros (grep, awk, sed)"
    "Scripting orientado a dispositivos embebidos"
    "Automatización y herramientas de construcción"
    "Debugging, profiling, y optimización"
    "Scripting avanzado en entornos BusyBox"
)

# Mostrar bloques
for i in $(seq 1 10); do
    bloque_dir="bloques/bloque$(printf "%02d" $i)"
    unlock_file="$bloque_dir/unlock_code.txt"
    estado="🔒 Bloque bloqueado"

    # Desbloqueo: el primero está siempre abierto
    if [ "$i" -eq 1 ] || [ -f "$unlock_file" ]; then
        estado="✅ Disponible"
    fi

    # Progreso actual
    progreso=""
    progreso_file="$bloque_dir/.progreso.tmp"
    if [ -f "$progreso_file" ]; then
        current=$(cat "$progreso_file")
        progreso="($current/10)"
    fi

    echo "[$i] Bloque $i - ${descripciones[$((i - 1))]} $estado $progreso"
done

echo ""
read -p "Selecciona un bloque [1-10] o pulsa ENTER para salir: " opcion

# Salida si se presiona ENTER sin opción
[ -z "$opcion" ] && echo "Hasta luego 👋" && exit 0

bloque_path="bloques/bloque$(printf "%02d" "$opcion")"
unlock_path="$bloque_path/unlock_code.txt"

# Comprobar si desbloqueado
if [ "$opcion" = "1" ] || [ -f "$unlock_path" ]; then
    echo ""
    echo "Ejecutando Bloque $opcion..."
    sleep 1
    exec "$bloque_path/run_bloque.sh"
else
    echo "🚫 El Bloque $opcion está bloqueado. Termina el anterior primero."
    exit 1
fi
