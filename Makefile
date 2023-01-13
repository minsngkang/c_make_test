

CFLAGS=-std=gnu99 -pedantic -Wall

hello_exec: job.o hobby.o hello_c.o
	gcc -o hello_exec job.o hobby.o hello_c.o

job.o : job.c
	gcc $(CFLAGS) -c job.c

hobby.o : hobby.c
	gcc $(CFLAGS) -c hobby.c

hello_c.o : hello_c.c
	gcc $(CFLAGS) -c hello_c.c

.PHONY: clean
clean:
	rm *.o hello_exec

depend:
	makedepend hello_h.h

# DO NOT DELETE #makedpend 결과물이 여기 적힌다
