# ejer01_test.sh
#!/bin/sh
"$1"
if getent group embedded >/dev/null && id linuxuser | grep -q embedded; then
    echo "✅ PASS"
else
    echo "❌ FAIL: No se detectó el grupo o el usuario"
fi
