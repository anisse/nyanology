#!/usr/bin/env make

all: build


build:
	edje_cc -id images -id images-imported-terminology anisse.edc

clean:
	rm *.edj

play: build
	terminology -t ./anisse.edj
