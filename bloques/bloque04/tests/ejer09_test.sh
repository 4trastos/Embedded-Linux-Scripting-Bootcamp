#!/bin/sh
echo '#!/bin/sh\nexit 0' > temp_ok.sh
chmod +x temp_ok.sh
output=$("$1" ./temp_ok.sh)
rm temp_ok.sh

if [ "$output" = "Éxito" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba 'Éxito'"
fi
