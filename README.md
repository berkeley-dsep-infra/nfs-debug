nfs-debug
=========

Utility container to help debug exessive NFS test_stateid operations.

```
# pull and run the container. append a git tag for `latest`
docker run --rm -it --privileged --pid=host --net=host berkeleydsep/nfs-debug

# run bash in the container.
# you should mount debugfs and tracefs as in /usr/local/bin/nfs-test.trace.sh.
docker run --rm -it --privileged --pid=host --net=host berkeleydsep/nfs-debug /bin/bash`

```
