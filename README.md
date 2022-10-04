nfs-debug
=========

Utility container to help debug exessive NFS test_stateid operations.

```
# pull and run the container. append a git tag for `latest`
docker run --name nfs-debug -it --privileged --pid=host --net=host berkeleydsep/nfs-debug

# start the existing container
docker start -i nfs-debug


# run bash in the container
docker run -it --privileged --pid=host --net=host berkeleydsep/nfs-debug /bin/bash`

```
