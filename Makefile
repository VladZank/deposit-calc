depcalc:build/main.o build/functions.o
	gcc  build/main.o build/functions.o -o bin/depcalc

build/main.o:src/main.c
	gcc -Wall -Werror -c src/main.c -o build/main.o

build/functions.o:src/functions.c
	gcc -Wall -Werror -c src/functions.c -o build/functions.o