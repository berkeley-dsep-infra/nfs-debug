FROM debian:sid-20220912

RUN apt -q update && \
    apt install -y \
        bpfcc-tools \
        bpftrace \
        less \
        lsof \
        procps \
        vim-tiny && \
    apt clean && \
    rm -rf /var/lib/apt/lists/* 2>/dev/null

COPY nfs-test-trace.bpf /usr/local/bin/

COPY nfs-test-trace.sh /usr/local/bin/

CMD /usr/local/bin/nfs-test-trace.sh
