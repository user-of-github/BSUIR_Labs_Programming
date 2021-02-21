// 1.2 (23). Найти 10 первых троек пифагоровых чисел

#include <stdio.h>
#include "pythagoreanTriaple.h"

int main()
{
    const unsigned short necessaryToFind = 10;
    printPythagoreanTriaples(&necessaryToFind);

    return 0;
}
