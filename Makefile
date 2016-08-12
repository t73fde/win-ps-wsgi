.PHONY: help build

help:
	@echo "Allowed targets:"
	@echo "- build: build image"

build:
	sudo docker build -t hshnwinps/wsgi .
