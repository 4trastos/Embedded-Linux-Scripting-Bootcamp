#!/bin/bash

while true; do
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

    # Mostrar bloques disponibles (modo progresivo)
    for i in $(seq 1 10); do
        bloque_dir="bloques/bloque$(printf "%02d" $i)"
        unlock_file="$bloque_dir/unlock_code.txt"
        estado="🔒 Bloque bloqueado"

        if [ "$i" -eq 1 ] || [ -f "$unlock_file" ]; then
            estado="✅ Disponible"
        fi

        progreso=""
        progreso_file="$bloque_dir/.progreso.tmp"
        if [ -f "$progreso_file" ]; then
            current=$(cat "$progreso_file")
            progreso="($current/10)"
        fi

        echo "[$i] Bloque $i - ${descripciones[$((i - 1))]} $estado $progreso"
    done

    echo ""
    echo "[L] Modo libre (sin bloqueo, puedes acceder a cualquier bloque)"
    echo ""
    read -p "Selecciona un bloque [1-10], L para modo libre, o ENTER para salir: " opcion

    # Salida si se presiona ENTER sin opción
    [ -z "$opcion" ] && echo "Hasta luego 👋" && exit 0

    # MODO LIBRE
    if [[ "$opcion" =~ ^[Ll]$ ]]; then
        while true; do
            clear
            echo "========================================"
            echo "🧠 Embedded Linux Scripting Bootcamp"
            echo "=== 🆓 MODO LIBRE ACTIVADO ==="
            echo ""
            echo "Puedes explorar cualquier bloque sin restricciones."
            echo "⚠️ El progreso no se guarda en este modo."
            echo ""

            for i in $(seq 1 10); do
                echo "[$i] Bloque $i - ${descripciones[$((i - 1))]} ✅ Disponible"
            done
            echo "[B] Volver al menú principal"
            echo ""
            read -p "Selecciona un bloque libre: " libre_opcion

            if [[ "$libre_opcion" =~ ^[1-9]$|^10$ ]]; then
                bloque_path="bloques/bloque$(printf "%02d" "$libre_opcion")"
                echo ""
                echo "Ejecutando Bloque $libre_opcion en modo libre..."
                sleep 1
                "$bloque_path/run_bloque.sh" --libre
                read -p "Pulsa ENTER para volver al modo libre..."
            elif [[ "$libre_opcion" =~ ^[Bb]$ ]]; then
                break
            else
                echo "❌ Opción inválida. Intenta de nuevo."
                sleep 1.5
            fi
        done
        continue
    fi

    # Validar que es un número entre 1 y 10
    if ! [[ "$opcion" =~ ^[1-9]$|^10$ ]]; then
        echo "❌ Opción no válida. Intenta nuevamente."
        sleep 1.5
        continue
    fi

    bloque_path="bloques/bloque$(printf "%02d" "$opcion")"
    unlock_path="$bloque_path/unlock_code.txt"

    # Comprobar si está desbloqueado
    if [ "$opcion" = "1" ] || [ -f "$unlock_path" ]; then
        echo ""
        echo "Ejecutando Bloque $opcion..."
        sleep 1
        exec "$bloque_path/run_bloque.sh"
    else
        echo "🚫 El Bloque $opcion está bloqueado. Termina el anterior primero."
        sleep 2
    fi
done
