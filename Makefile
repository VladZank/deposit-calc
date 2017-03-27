.PHONY:all clean test

all:build/src/main.o build/src/functions.o
	gcc  build/src/main.o build/src/functions.o -o bin/depcalc

build/src/main.o:src/main.c
	gcc -Wall -Werror -c src/main.c -o build/src/main.o

build/src/functions.o:src/functions.c
	gcc -Wall -Werror -c src/functions.c -o build/src/functions.o

test:deposit-calc-test

deposit-calc-test:build/test/main.o build/test/functions.o
	gcc build/test/main.o build/test/functions.o -o bin/deposit-calc-test

build/test/main.o:src/main.c
	gcc -Wall -Werror -I thirdparty/ctest src -c src/main.c -o build/test/main.o

build/test/functions.o:src/functions.c
	gcc -Wall -Werror -I thirdparty/ctest src -c src/functions.c -o build/test/functions.o

clean:
	rm -rf build/test/*.o build/src/*.o bin/*