SHA=$(shell git rev-parse --short HEAD)

build:
	docker build -t berkeleydsep/nfs-debug:$(SHA) .

push:
	docker tag berkeleydsep/nfs-debug:$(SHA) berkeleydsep/nfs-debug:latest
	docker push berkeleydsep/nfs-debug:$(SHA)
	docker push berkeleydsep/nfs-debug:latest
