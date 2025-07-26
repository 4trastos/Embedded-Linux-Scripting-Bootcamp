# ejer05_test.sh
#!/bin/bash
touch /tmp/test_file
output=$("$1")
if echo "$output" | grep -q "test_file"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El archivo reciente no fue detectado"
fi
rm /tmp/test_file
