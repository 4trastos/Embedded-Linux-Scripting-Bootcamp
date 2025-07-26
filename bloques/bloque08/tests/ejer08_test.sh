# ejer08_test.sh
#!/bin/sh
output=$("$1")
if [ "$(whoami)" = "root" ]; then
    if echo "$output" | grep -qi "alerta"; then
        echo "✅ PASS"
    else
        echo "❌ FAIL: No alertó estando root logueado"
    fi
else
    echo "✅ PASS (No root conectado)"
fi
