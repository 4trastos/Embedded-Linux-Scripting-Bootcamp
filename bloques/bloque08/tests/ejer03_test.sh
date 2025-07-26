# ejer03_test.sh
#!/bin/sh
output=$("$1" "$USER")
if echo "$output" | grep -q "$$"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectaron procesos del usuario actual"
fi
