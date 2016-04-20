IMAGE=$(shell basename $(CURDIR) )
REPOSITORY=$(shell basename `dirname $(CURDIR)` )

ifdef REGISTRY
	URL=$(REGISTRY)/
else
	URL=
endif

ifndef REGISTRY_TAG
export REGISTRY_TAG=latest
endif

IMAGE_NAME=$(URL)$(REPOSITORY)/$(IMAGE):$(REGISTRY_TAG)

.PHONY: build-clean build push copy-files pull-repo

all:

build-clean:
	docker build --force-rm=true --no-cache=true --rm=true -t $(IMAGE_NAME) .
	
build: 
	docker build --force-rm=true --rm=true -t $(IMAGE_NAME) .

push:
	docker push $(IMAGE_NAME)