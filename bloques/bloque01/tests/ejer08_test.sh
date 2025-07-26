#!/bin/bash
out=$("$1")
expected="1
2
3
4
5"

[ "$out" = "$expected" ] && echo "✅ PASS" || echo "❌ FAIL: '$out'"
