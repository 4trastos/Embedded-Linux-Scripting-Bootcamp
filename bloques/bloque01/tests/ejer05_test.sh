#!/bin/bash
output=$("$1" ABC)
[ "$output" = "Argument: ABC" ] && echo "✅ PASS" || echo "❌ FAIL: '$output'"
