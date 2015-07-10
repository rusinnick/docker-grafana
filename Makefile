IMAGE=$(shell basename $(CURDIR) )
REPOSITORY=$(shell basename `dirname $(CURDIR)` )

ifdef REGISTRY
	URL=$(REGISTRY)/
else
	URL=
endif

all:

build-clean:
	docker build --force-rm=true --no-cache=true --rm=true -t $(URL)$(REPOSITORY)/$(IMAGE) .
	
build:
	docker build --force-rm=true --rm=true -t $(URL)$(REPOSITORY)/$(IMAGE) .

push:
	docker push $(URL)$(REPOSITORY)/$(IMAGE)