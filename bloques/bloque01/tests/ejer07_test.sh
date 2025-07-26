#!/bin/bash
r1=$("$1" 4)
r2=$("$1" 3)

[ "$r1" = "Even" ] && [ "$r2" = "Odd" ] && echo "✅ PASS" || echo "❌ FAIL: $r1 / $r2"
