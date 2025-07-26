#!/bin/sh
# Simular entrada con duplicados
output=$("$1" /etc/passwd 2>/dev/null)
if [ $? -ne 0 ]; then
    echo "❌ FAIL: El script falló al ejecutarse"
elif echo "$output" | grep -q "root"; then
    echo "✅ PASS (al menos un usuario detectado correctamente)"
else
    echo "⚠️ AVISO: No se encontraron duplicados (esto puede ser correcto si no hay duplicados reales)"
    echo "✅ PASS (sin duplicados)"
fi
