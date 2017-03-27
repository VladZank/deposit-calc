prog := depcalc
comp := gcc
flags := -Wall -Werror
tflags := -I thirdparty/ctest -Wall -Werror
test/.o := build/test
src/.o := build/src

.PHONY:all clean test

all:$(src/.o)/main.o $(src/.o)/functions.o
	$(comp)  $(src/.o)/main.o $(src/.o)/functions.o -o bin/$(prog)

$(src/.o)/main.o:src/main.c
	$(comp) $(flags) -c src/main.c -o $(src/.o)/main.o

$(src/.o)/functions.o:src/functions.c
	$(comp) $(flags) -c src/functions.c -o $(src/.o)/functions.o

test:deposit-calc-test

deposit-calc-test:$(test/.o)/main.o $(test/.o)/functions.o
	$(comp) $(test/.o)/main.o $(test/.o)/functions.o -o bin/$(prog)-test

$(test/.o)/main.o:src/main.c
	$(comp) $(tflags) -c src/main.c -o $(test/.o)/main.o

$(test/.o)/functions.o:src/functions.c
	$(comp) $(tflags) -c src/functions.c -o $(test/.o)/functions.o

clean:
	rm -rf build/test/*.o build/src/*.o bin/*