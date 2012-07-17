#!/usr/bin/env make

all: build


build:
	edje_cc -id images -id images-imported-terminology anisse.edc

clean:
	rm *.edj

play: build
	terminology -t ./anisse.edj

playstars: build
	edje_player -g nyanology/stars ./anisse.edj

playcat: build
	edje_player -g nyanology/nyancat ./anisse.edj
