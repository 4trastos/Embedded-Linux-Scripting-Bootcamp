#!/bin/bash
tmp_json=$(mktemp)
tmp_yaml=$(mktemp)

echo '{"nombre":"Juan","edad":30}' > "$tmp_json"

"$1" "$tmp_json" "$tmp_yaml"
exit_code=$?

if [ $exit_code -ne 0 ]; then
    echo "❌ FAIL: El script falló al ejecutarse (exit code $exit_code)"
elif grep -q "nombre: Juan" "$tmp_yaml" && grep -q "edad: 30" "$tmp_yaml"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El archivo YAML no contiene los valores esperados"
fi

rm -f "$tmp_json" "$tmp_yaml"
