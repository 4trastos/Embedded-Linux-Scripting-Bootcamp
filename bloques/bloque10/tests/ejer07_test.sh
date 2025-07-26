#!/bin/bash

output=$("$1")

if echo "$output" | grep -Eq "encendido [0-9]+ minutos"; then
    echo "✅ PASS"
else
    echo "❌ FAIL: El formato debe ser 'El sistema lleva encendido X minutos'"
fi
