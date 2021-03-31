laboratoryTask4-1.exe: main.o AnalyzeWords.o
	gcc -o laboratoryTask4-1.exe main.o AnalyzeWords.o
main.o:	main.c AnalyzeWords.h
	gcc -O0 -g3 -Wall -c main.c
	gcc -masm=intel -g3 -Wall -c main.c -S
AnalyzeWords.o: AnalyzeWords.c AnalyzeWords.h
	gcc -O0 -g3 -Wall -c AnalyzeWords.c
	gcc -masm=intel -g3 -Wall -c AnalyzeWords.c -S

Clean:
	del -rf *.s *.o *.exe
