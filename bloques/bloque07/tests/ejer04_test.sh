#!/bin/sh

script=$1

cat << 'EOF' > /tmp/fake_job.sh
#!/bin/sh
echo "Ejecución de trabajo simulada"
EOF
chmod +x /tmp/fake_job.sh

output=$("$script" /tmp/fake_job.sh | grep -c "Ejecución de trabajo simulada")

if [ "$output" -eq 5 ]; then
  echo "✅ PASS"
else
  echo "❌ FAIL: Se esperaban 5 ejecuciones, se obtuvieron $output"
fi
