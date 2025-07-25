#!/bin/sh
output=$("$1")
actual=$(uname -r)
[ "$output" = "$actual" ] && echo "✅ PASS" || echo "❌ FAIL: Esperado '$actual', obtenido '$output'"
