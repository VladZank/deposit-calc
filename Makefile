depcalc:build/main.o
	gcc build/main.o -o bin/depcalc

build/main.o:src/main.c
	gcc -Wall -Werror -c src/main.c -o build/main.o