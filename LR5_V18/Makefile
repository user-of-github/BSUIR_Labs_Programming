all: Clean BuildMain BuildTests

BuildMain:
	gcc -std=c11 main.c QueueAtStore.c -o Lab5.exe

BuildTests:
	gcc -std=c11 test.c QueueAtStore.c -o Lab5Tests.exe

Clean:
	erase Lab5.exe.exe
	erase Lab5Tests.exe