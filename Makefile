main: chello.c 
	gcc -c chello.c -o chello.o && as writeexit.s -o writeexit.o && ld chello.o writeexit.o -o chello