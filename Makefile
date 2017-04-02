prog := depcalc
comp := gcc
flags := -Wall -Werror
tflags := -I src -I thirdparty/ctest -Wall -Werror
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

deposit-calc-test:$(test/.o)/main.o $(test/.o)/depcalc_test.o $(src/.o)/functions.o
	$(comp) $(test/.o)/main.o $(test/.o)/depcalc_test.o $(src/.o)/functions.o -o bin/$(prog)-test

$(test/.o)/main.o:test/main.c
	$(comp) $(tflags) -c test/main.c -o $(test/.o)/main.o

$(test/.o)/depcalc_test.o:test/depcalc_test.c
	$(comp) $(tflags) -c test/depcalc_test.c -o $(test/.o)/depcalc_test.o

clean:
	rm -rf build/test/*.o build/src/*.o bin/*