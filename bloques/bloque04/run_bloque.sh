#!/bin/bash

# Modo libre
MODO_LIBRE=false
if [[ "$1" == "--libre" ]]; then
    MODO_LIBRE=true
    echo "🔓 Ejecutando en MODO LIBRE (progreso no se guardará)"
    sleep 1
fi


cd "$(dirname "$0")"
mkdir -p soluciones
enunciados="enunciados"
tests="tests"
passed=0

while [ $passed -lt 10 ]; do
    ejercicio=$(printf "%02d" $((passed + 1)))
    script="soluciones/ejer${ejercicio}.sh"
    test_script="${tests}/ejer${ejercicio}_test.sh"
    enunciado="${enunciados}/ejer${ejercicio}.txt"

    clear
    echo "=============================="
    echo "🧱 Bloque 4 - Ejercicio $ejercicio"
    echo "=============================="
    cat "$enunciado"
    echo ""
    echo "¿Listo para empezar? Pulsa ENTER para abrir vim..."
    echo "(o escribe 'salir' y pulsa ENTER para terminar)"
    read respuesta

    if [ "$respuesta" = "salir" ] || [ "$respuesta" = "q" ]; then
        echo "$passed" > .progreso.tmp
        echo "💾 Progreso guardado. Puedes continuar más tarde."
        exit 0
    fi

    # Crear archivo si no existe
    if [ ! -f "$script" ]; then
        {
            echo "#!/bin/bash"
            echo ""
            echo "# 📝 Ayuda rápida de VIM:"
            echo "# - i   👉 Modo Insertar"
            echo "# - :w  👉 Guardar"
            echo "# - :q  👉 Salir"
            echo "# - :wq 👉 Guardar y salir"
            echo "# - :q! 👉 Salir sin guardar"
            echo ""
        } > "$script"
        chmod +x "$script"
    fi

    vim "+set number" "$script"


    echo ""
    echo "Corrigiendo tu solución..."
    sleep 3
    chmod +x "$test_script"
    output=$("./$test_script" "./$script")

    echo "$output"

    if echo "$output" | grep -q "✅ PASS"; then
        echo "🎉 ¡Ejercicio $ejercicio completado!"
        passed=$((passed + 1))
    else
        echo "🚫 Falla el test. Corrige e inténtalo de nuevo."
        read -p "Pulsa ENTER para continuar..."
    fi
done

# Fin de bloque
echo "🎉 ¡Has completado el Bloque 4!"
echo "Código para desbloquear Bloque 5: CODE-BLOQUE-2-UNLOCK" > unlock_code.txt
echo "✅ Código guardado en unlock_code.txt"
