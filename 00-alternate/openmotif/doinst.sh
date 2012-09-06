if ! grep /usr/dt/lib etc/ld.so.conf > /dev/null 2>&1; then
  echo "/usr/dt/lib" >> etc/ld.so.conf
fi

if [ -x /sbin/ldconfig ]; then
  /sbin/ldconfig > /dev/null 2>&1
fi

