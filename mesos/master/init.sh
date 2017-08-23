#!/bin/bash

# host paramters
PARAMETERS=""

# Use EC2
if [[ -n "$EC2_INSTANCE" ]]; then
    PARAMETER="--advertise_ip=$(curl http://169.254.169.254/latest/meta-data/local-ipv4)"
    PARAMETERS="$PARAMETERS $PARAMETER"
fi

# Start service
exec /usr/sbin/mesos-master "$PARAMETERS" "$@"