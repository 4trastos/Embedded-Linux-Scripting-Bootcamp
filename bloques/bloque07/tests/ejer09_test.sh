#!/bin/bash

script=$1
mkdir -p /tmp/backup_test
echo "archivo1" > /tmp/backup_test/test.txt

"$script" /tmp/backup_test > /dev/null
found=$(ls /tmp | grep backup_test.*tar)

if [ -n "$found" ]; then
  echo "✅ PASS"
else
  echo "❌ FAIL: No se creó el archivo .tar de respaldo"
fi
