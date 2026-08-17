PUBLISHER=rcsnjszg
APP=phpmyadmin
TAG=5.2.3-apache

build:
	docker build --tag ${PUBLISHER}/${APP}:${TAG} .