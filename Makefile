

CFLAGS=-std=gnu99 -pedantic -Wall

hello_exec: job.o hobby.o hello_c.o
	gcc -o hello_exec job.o hobby.o hello_c.o

job.o : job.c
	gcc $(CFLAGS) -c job.c #-o job.o이런식으로 표현해도 되긴 하나 똑같아서 굳이 쓰지 않았다

hobby.o : hobby.c
	gcc $(CFLAGS) -c hobby.c

hello_c.o : hello_c.c
	gcc $(CFLAGS) -c hello_c.c

.PHONY: clean #.PHONY로 선언했다
clean:
	rm -f hello_exec *.o *.c~ *.h~ #.c~ .h~는 중간 부산물파일. hello_exec은 실행바이너리, 이들을 모두 삭제한다.

depend:
	makedepend hobby.c job.c #헤더가 포함되는 파일들의 경우, 디펜던시가 있는 것. 이런 것들을 추가해준다.

# DO NOT DELETE #makedpend 결과물이 여기 적힌다
# makedepend 커맨드가 없다는 에러가 뜰 수 있다 => makedepend설치 필요