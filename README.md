$ make
gcc -std=gnu99 -pedantic -Wall -c job.c
gcc -std=gnu99 -pedantic -Wall -c hobby.c
gcc -std=gnu99 -pedantic -Wall -c hello_c.c
gcc -o hello_exec job.o hobby.o hello_c.o

$ ./hello_exec 
HELLO WARLD
I am a boy
My hobby is collecting stamps!
