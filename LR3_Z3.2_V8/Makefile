laboratoryTask3.exe: main.o workWithMatrix.o
	gcc -o laboratoryTask3.exe main.o workWithMatrix.o
main.o:	main.c workWithMatrix.h
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S
workWithMatrix.o: workWithMatrix.c workWithMatrix.h
	gcc -O0 -g3 -Wall -c workWithMatrix.c
	gcc -masm=intel -g3 -Wall -c workWithMatrix.c -S

Clean:
	del -rf *.s *.o *.exe
