# ejer04_test.sh
#!/bin/sh
output=$("$1")
if echo "$output" | grep -q "$USER"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No aparece el usuario en el resultado"
fi
