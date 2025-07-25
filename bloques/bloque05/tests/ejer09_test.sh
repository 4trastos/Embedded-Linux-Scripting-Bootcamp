#!/bin/sh
cat <<EOF > input.txt
línea 1

línea 2

EOF

output=$("$1")
expected="línea 1
línea 2"
if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se eliminaron correctamente las líneas vacías"
fi
