OBJS = main.o administrador.o bodeguero.o vendedor.o

programa: $(OBJS)
	gcc -o programa $(OBJS)

main.o: main.s
	gcc -c main.s

main.s: main.c funciones.h
	gcc -S main.c

bodeguero.o: bodeguero.s
	gcc -c bodeguero.s

bodeguero.s: bodeguero.c funciones.h
	gcc -S bodeguero.c

administrador.o: administrador.s
	gcc -c administrador.s

administrador.s: administrador.c funciones.h
	gcc -S administrador.c

vendedor.o: vendedor.s
	gcc -c vendedor.s

vendedor.s: vendedor.c funciones.h
	gcc -S vendedor.c

clean:
	rm -f programa *.s *.o
