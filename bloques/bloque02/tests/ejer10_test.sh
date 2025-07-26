#!/bin/bash
file="tests/ejer10_test.sh"
echo "#!/bin/bash" > "$file"
chmod +x "$file"
output=$("$1" "$file")
if echo "$output" | grep -q "ejecutable"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No indicó correctamente si el archivo es ejecutable."
fi
rm -f "$file"
