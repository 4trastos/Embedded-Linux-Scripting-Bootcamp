#!/bin/sh
output=$("$1")
[ "$output" = "I love Linux" ] && echo "✅ PASS" || echo "❌ FAIL: '$output'"
