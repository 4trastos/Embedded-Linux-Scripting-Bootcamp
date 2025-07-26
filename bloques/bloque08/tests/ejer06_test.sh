# ejer06_test.sh
#!/bin/bash
output=$("$1")
if echo "$output" | grep -q "$USER"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectó ningún usuario conectado"
fi
