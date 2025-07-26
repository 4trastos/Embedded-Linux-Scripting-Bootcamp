#!/bin/bash

src=$(mktemp -d)
dst=$(mktemp -d)
echo "config A" > "$src/a.conf"
echo "config B" > "$src/b.conf"

"$1" "$src" "$dst"

if [ -f "$dst/a.conf" ] && [ -f "$dst/b.conf" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Los archivos .conf no fueron copiados correctamente"
fi

rm -r "$src" "$dst"
