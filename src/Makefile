CC_SDL=-lSDL2 -lSDL2_image `sdl2-config --cflags --libs`
LIBS_GL=-lGLESv2 -lEGL -lm -lX11 -lglut -lGL -s LEGACY_GL_EMULATION=1


all: advanced simple

simple:
	em++ Example.cpp -Wall -s USE_SDL=2 -o /dist/simple.gen.js

advanced:
	em++ SDLExample.cpp --preload-file data -Wall -sLLD_REPORT_UNDEFINED -s USE_SDL=2 -s USE_SDL_IMAGE=2 ${LIBS_GL} ${CC_SDL} -s USE_WEBGL2=1 -o /dist/advanced.gen.js

clean:
	rm -f *.o
