PUBLISHER=rcsnjszg
APP=phpmyadmin
TAG=5.2.2-apache

build:
	docker build --tag ${PUBLISHER}/${APP}:${TAG} .