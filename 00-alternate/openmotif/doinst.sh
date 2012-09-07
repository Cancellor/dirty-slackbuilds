if [ $(uname -m) = x86_64 ]; then
  LIBDIRSUFFIX=64
fi

if ! grep /opt/openmotif/lib etc/ld.so.conf > /dev/null 2>&1; then
  echo "/opt/openmotif/lib$LIBDIRSUFFIX" >> etc/ld.so.conf
fi

if [ -x /sbin/ldconfig ]; then
  /sbin/ldconfig > /dev/null 2>&1
fi

