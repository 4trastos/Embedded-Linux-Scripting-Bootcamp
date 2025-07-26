# ejer07_test.sh
#!/bin/sh
output=$("$1" | head -n 5)
if [ -n "$output" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se mostró salida del monitor"
fi
