#!/bin/sh

script=$1
fake_url="https://example.com/fake.sh"

output=$(echo "n" | "$script" "$fake_url")

if echo "$output" | grep -qi "confirmación" || echo "$output" | grep -qi "¿"; then
  echo "✅ PASS"
else
  echo "❌ FAIL: No se pidió confirmación antes de actualizar"
fi
