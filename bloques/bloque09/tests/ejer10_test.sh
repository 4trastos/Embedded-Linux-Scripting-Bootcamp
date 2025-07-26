#!/bin/bash
output=$("$1")
services="ssh cron syslog"
errors=0

for service in $services; do
    if ! echo "$output" | grep -q "$service"; then
        echo "❌ FAIL: El servicio '$service' no fue reportado"
        errors=$((errors + 1))
    fi
done

if [ $errors -eq 0 ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Faltan servicios en la salida"
fi
