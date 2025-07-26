# ejer04_test.sh
#!/bin/bash
output=$("$1")
if echo "$output" | grep -q "$USER"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No aparece el usuario en el resultado"
fi
