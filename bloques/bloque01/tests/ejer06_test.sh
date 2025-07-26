#!/bin/bash
"$1" root
[ $? -eq 0 ] || { echo "❌ FAIL: root debería existir"; exit; }

"$1" fakeuser1234
[ $? -eq 1 ] && echo "✅ PASS" || echo "❌ FAIL: debería retornar 1"
