# ejer10_test.sh
#!/bin/bash
output=$("$1")
if echo "$output" | awk -F: '$3 > 1000' | grep -q .; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se listaron usuarios con UID > 1000"
fi
