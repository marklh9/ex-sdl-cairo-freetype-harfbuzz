CC=gcc
CFLAGS=--std=c99 -g -O2 -Wall --pedantic `freetype-config --cflags` `sdl-config --cflags`
LDFLAGS=`icu-config --ldflags`
LIBS=-lcairo -lharfbuzz -lharfbuzz-icu `freetype-config --libs` `sdl-config --libs`

all: vw

vw: vw.c
	$(CC) $< $(CFLAGS) -o $@ $(LDFLAGS) $(LIBS)

clean:
	rm -f ex-sdl-cairo-freetype-harfbuzz
