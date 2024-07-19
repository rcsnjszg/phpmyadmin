PUBLISHER=rcsnjszg
APP=phpmyadmin:5.2.1-apache

build:
	docker build --tag ${PUBLISHER}/${APP} .