#Dockerfile vars
CREATED_AT=$(date -u +'%Y-%m-%dT%H:%M:%SZ')

#vars
IMAGENAME=$(shell basename $(CURDIR))
REPO=repo.beardstack.tech
IMAGEFULLNAME=${REPO}/${IMAGENAME}

.PHONY: help build push all

help:
	    @echo "Makefile arguments:"
	    @echo ""
	    @echo "Makefile commands:"
	    @echo "build"
	    @echo "push"
	    @echo "all"

.DEFAULT_GOAL := all

build:
	    @docker build --pull --build-arg CREATED_AT=${CREATED_AT} -t ${IMAGEFULLNAME} -t  ${IMAGEFULLNAME}:latest .

push:
	    @docker push ${IMAGEFULLNAME}

all: build push
