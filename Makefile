VERSION?=latest
HUB?=mrcr

build:
	docker build -t ${HUB}/ruby-npm:${VERSION} .

push:
	docker push ${HUB}/ruby-npm:${VERSION}
