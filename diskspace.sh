#!/bin/bash

# Uygun disk alanını görüntüler.

TEMP="/tmp/available.$$"

trap "rm -f $TEMP" EXIT

cat << 'EOF' > $TEMP
    { sum += $4 }
END { mb = sum / 1024
      gb = mb / 1024
      printf "%.0f MB (%.2fGB) of available disk space\n", mb, gb
    }
EOF
df -k | awk -f $TEMP
exit 0
