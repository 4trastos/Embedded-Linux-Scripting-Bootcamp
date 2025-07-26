#!/bin/bash
echo '#!/bin/bash\necho OK' > test_exec.sh
chmod +x test_exec.sh
output=$("$1" test_exec.sh)
rm test_exec.sh

if [ "$output" = "Ejecutable" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba 'Ejecutable'"
fi
