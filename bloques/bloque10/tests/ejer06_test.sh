#!/bin/sh

tmp_file=$(mktemp)
echo "test" > "$tmp_file"

# Primera ejecución (debe crear el archivo de referencia)
"$1" "$tmp_file" > /dev/null

# Esperar y modificar
sleep 1
echo "nueva línea" >> "$tmp_file"

output=$("$1" "$tmp_file")
rm "$tmp_file" "${tmp_file}.lastmod"

if echo "$output" | grep -q "modificado"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectó modificación del archivo"
fi
