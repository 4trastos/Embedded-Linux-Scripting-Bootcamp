#!/bin/sh
touch /tmp/testfile123
"$1" /tmp/testfile123
perm=$(stat -c "%a" /tmp/testfile123)
[ "$perm" = "755" ] && echo "✅ PASS" || echo "❌ FAIL: permisos = $perm"
