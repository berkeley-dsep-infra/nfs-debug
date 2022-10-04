#!/bin/bash

if [ -z "$(mount -t debugfs)" ]; then
	echo mount -t debugfs none /sys/kernel/debug
fi

if [ -z "$(mount -t tracefs)" ]; then
	echo mount -t tracefs none /sys/kernel/debug/tracing
fi

echo bpftrace "$@" /usr/local/bin/nfs-test-trace.bpf
