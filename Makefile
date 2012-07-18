#!/usr/bin/env make

all: build


build:
	edje_cc -id images -id images-imported-terminology nyanology.edc

clean:
	rm *.edj

play: build
	terminology -t ./nyanology.edj

playstars: build
	edje_player -g nyanology/stars ./nyanology.edj

playcat: build
	edje_player -g nyanology/nyancat ./nyanology.edj
