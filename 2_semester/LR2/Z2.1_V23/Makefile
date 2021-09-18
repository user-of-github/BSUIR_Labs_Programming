laboratoryTask.exe:	main.o eFruit.o
	gcc -o laboratoryTask.exe main.o eFruit.o

main.o:	main.c eFruit.h
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S

eFruit.o:	eFruit.c eFruit.h
	gcc -O0 -g3 -Wall -c eFruit.c
	gcc -masm=intel -g3 -Wall -c eFruit.c -S

clean:
	del -rf *.s *.o *.exe