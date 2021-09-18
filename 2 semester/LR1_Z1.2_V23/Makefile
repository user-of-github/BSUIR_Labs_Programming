laboratoryTask.exe:	main.o pythagoreanTriaple.o
	gcc -o laboratoryTask.exe main.o pythagoreanTriaple.o

main.o:	main.c pythagoreanTriaple.h
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S

pythagoreanTriaple.o:	pythagoreanTriaple.c pythagoreanTriaple.h
	gcc -O0 -g3 -Wall -c pythagoreanTriaple.c
	gcc -masm=intel -g3 -Wall -c pythagoreanTriaple.c -S

clean:
	del -rf *.s *.o *.exe