binary: lib.o prog.o
	gcc -o binary lib.o prog.o
binary: lib.o prog.o
	gcc -g -Wall -o binary lib.o prog.o
lib.o: lib.c
	gcc -o lib.o -g -Wall -c lib.c
prog.o: prog.c
	gcc -o prog.o -g -Wall -c prog.c
clean:
	rm *.o binary
