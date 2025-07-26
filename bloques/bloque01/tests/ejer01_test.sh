#!/bin/bash
output=$("$1")
if [ "$output" = "Hello Embedded Linux!" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Esperado 'Hello Embedded Linux!', obtuviste '$output'"
fi
