laboratoryTask4-2.exe: main.o CorrectSequence.o
	gcc -o laboratoryTask4-2.exe main.o CorrectSequence.o
main.o:	main.c CorrectSequence.h
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S
CorrectSequence.o: CorrectSequence.c CorrectSequence.h
	gcc -O0 -g3 -Wall -c CorrectSequence.c
	gcc -masm=intel -g3 -Wall -c CorrectSequence.c -S

Clean:
	del -rf *.s *.o *.exe
