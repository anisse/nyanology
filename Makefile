#!/usr/bin/env make

all: build

build:
	gcc -o nyanoplay nyanoplay.c `pkg-config --cflags --libs eina evas ecore ecore-evas edje`
	edje_cc -id images/ nyanology.edc

clean:
	rm *.edj nyanoplay

play:
	edje_player nyanology.edj
