SHA=$(shell git rev-parse --short HEAD)

build:
	docker build -t berkeleydsep/nfs-debug:$(SHA) .

push:
	docker push berkeleydsep/nfs-debug:$(SHA)
