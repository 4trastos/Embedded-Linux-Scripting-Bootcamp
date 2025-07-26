# ejer02_test.sh
#!/bin/sh
group=$(id -gn "$USER")
output=$("$1" "$USER")
if [ "$output" = "$group" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$group', se obtuvo '$output'"
fi
