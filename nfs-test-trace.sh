#!/bin/bash

if [ -z "$(mount -t debugfs)" ]; then
	mount -t debugfs none /sys/kernel/debug
fi

if [ -z "$(mount -t tracefs)" ]; then
	mount -t tracefs none /sys/kernel/debug/tracing
fi

exec bpftrace /usr/local/bin/nfs-test-trace.bpf
