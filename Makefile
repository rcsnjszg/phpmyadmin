PUBLISHER=rcsnjszg
APP=phpmyadmin
TAG=5.2.3-apache

build:
	docker build --tag ${PUBLISHER}/${APP}:${TAG} .

buildx:
	docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag ${PUBLISHER}/${APP}:${TAG} --push .
	docker buildx build --platform linux/arm/v7,linux/arm64/v8,linux/amd64 --tag ${PUBLISHER}/${APP}:latest --push .
