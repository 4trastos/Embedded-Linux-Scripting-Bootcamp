#!/bin/sh

output=$("$1" root)
if echo "$output" | grep -q "Usuario encontrado"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El usuario 'root' debería existir en /etc/passwd"
fi
