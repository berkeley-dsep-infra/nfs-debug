FROM debian:sid-20220912

RUN apt -q update && \
    apt install -y bpftrace less lsof vim-tiny && \
    apt clean

COPY nfs-test-trace.sh /usr/local/bin/
COPY nfs-test-trace.bpf /usr/local/bin/
