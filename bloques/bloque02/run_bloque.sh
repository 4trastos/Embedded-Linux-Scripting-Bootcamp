# Directorio: bloques/bloque02/

# run_bloque.sh
#!/bin/sh

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
    echo "🧱 Bloque 2 - Ejercicio $ejercicio"
    echo "=============================="
    cat "$enunciado"
    echo ""
    echo "¿Listo para empezar? Pulsa ENTER para abrir vim..."
    read

    [ ! -f "$script" ] && echo "#!/bin/sh" > "$script" && chmod +x "$script"
    vim "$script"

    echo ""
    echo "Corrigiendo tu solución..."
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
echo "🎉 ¡Has completado el Bloque 2!"
echo "Código para desbloquear Bloque 3: CODE-BLOQUE-2-UNLOCK" > unlock_code.txt
echo "✅ Código guardado en unlock_code.txt"
