# ejer09_test.sh
#!/bin/sh
mkdir -p /tmp/testdir_b8
echo "#!/bin/sh" > /tmp/testdir_b8/test_script.sh
chmod 644 /tmp/testdir_b8/test_script.sh
"$1" /tmp/testdir_b8
perm=$(stat -c "%a" /tmp/testdir_b8/test_script.sh)
if [ "$perm" = "755" ]; then
    echo "✅ PASS"
else
    echo "❌ FAIL: Permisos incorrectos, se obtuvo $perm"
fi
rm -rf /tmp/testdir_b8
