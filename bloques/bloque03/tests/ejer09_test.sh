#!/bin/bash
output=$("$1" uno dos tres)
if echo "$output" | grep -q "Arg: uno" && echo "$output" | grep -q "Arg: dos" && echo "$output" | grep -q "Arg: tres"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Los argumentos no fueron impresos correctamente"
fi
