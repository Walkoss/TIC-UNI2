FIG=docker-compose
CONSOLE=bin/console

.DEFAULT_GOAL := help
.PHONY: help start stop reset

help:
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'

##
## Project setup
##---------------------------------------------------------------------------

start:          ## Install and start the project
start: build up

stop:           ## Remove docker containers
	$(FIG) kill

reset:          ## Reset the whole project
reset: stop start

# Internal rules

build:
	$(FIG) build

up:
	$(FIG) up -d