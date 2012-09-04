#!/usr/bin/env make

all: build


build:
	edje_cc -id images -id images-imported-terminology nyanology.edc
buildabout:
	edje_cc -id images -id images-imported-terminology about.edc

clean:
	rm *.edj

play: build
	terminology -t ./nyanology.edj

playstars: build
	edje_player -g nyanology/stars ./nyanology.edj

playcat: build
	edje_player -g nyanology/nyancat ./nyanology.edj

playabout: buildabout
	edje_player -g terminology/about ./about.edj
