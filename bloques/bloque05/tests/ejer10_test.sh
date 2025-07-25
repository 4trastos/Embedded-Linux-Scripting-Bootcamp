#!/bin/sh
cat <<EOF > input.txt
uno
uno
dos
dos
tres
EOF

output=$("$1")
expected="uno
dos
tres"
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se eliminaron los duplicados consecutivos correctamente"
fi
