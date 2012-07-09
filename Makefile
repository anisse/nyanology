#!/usr/bin/env make

all: build


build:
	edje_cc -id images -id ~/dev/EFL/e17_src/terminology/data/themes/images/ anisse.edc

build2:
	gcc -o nyanoplay nyanoplay.c `pkg-config --cflags --libs eina evas ecore ecore-evas edje`
	edje_cc -id images/ nyanology.edc

clean:
	rm *.edj nyanoplay

play: build
	edje_player nyanology.edj
