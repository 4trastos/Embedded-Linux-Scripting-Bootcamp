#!/bin/bash
mkdir temp && cd temp
cat > funciones.sh <<EOF
#!/bin/bash
mostrar_fecha() {
    date +%Y-%m-%d
}
EOF

cat > principal.sh <<EOF
#!/bin/bash
. ./funciones.sh
mostrar_fecha
EOF
chmod +x principal.sh funciones.sh

output=$(./principal.sh)
expected=$(date +%Y-%m-%d)
cd ..
rm -rf temp

if [ "$output" = "$expected" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba '$expected', obtuviste '$output'"
fi
