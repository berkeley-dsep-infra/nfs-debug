nfs-debug
=========

Utility container to help debug exessive NFS test_stateid operations.

```
# pull and run the container
docker run --name nfs-debug -it --privileged --pid=host --net=host berkeleydsep/nfs-debug:${SHA}`

# start the existing container
docker start -i nfs-debug

# run the bpftrace wrapper script
nfs-test-trace.sh
```
