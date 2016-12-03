VERSION?=latest

build:
	docker build -t mrcr/ruby-npm:${VERSION} .

push:
	docker push mrcr/ruby-npm:${VERSION}
