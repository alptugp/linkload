chello: chello.o writeexit.o 
	ld chello.o writeexit.o -o chello 

chello.o: chello.c 
	gcc -c chello.c -o chello.o

writeexit.o: writeexit.s 
	as writeexit.s -o writeexit.o

clean:
	rm *.o chello 