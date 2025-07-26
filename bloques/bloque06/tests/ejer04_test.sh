#!/bin/sh
rm -f error.log
"$1"
if [ -s error.log ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se redirigió el error al archivo error.log"
fi
