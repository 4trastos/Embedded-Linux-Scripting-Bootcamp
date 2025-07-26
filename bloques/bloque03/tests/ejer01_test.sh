#!/bin/bash
output=$("$1")
expected="1\n2\n3\n4\n5"
if [ "$(printf "%s" "$output")" = "$(printf "%b" "$expected")" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Se esperaba:\n$expected\nPero se obtuvo:\n$output"
fi
