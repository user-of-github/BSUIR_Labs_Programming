#include "pythagoreanTriaple.h"

void printPythagoreanTriaples (const unsigned short *numberOfTriaples)
{
    unsigned short minimumPossibleHypotenuse = 5;
    unsigned short alreadyFound = 0;
    unsigned short previousLowerBound = 0;

    while (alreadyFound < *numberOfTriaples)
    {
        for (unsigned short result = minimumPossibleHypotenuse; result > previousLowerBound; -- result)
        {
            for (unsigned short first = 1; first < result; ++ first)
            {
                for (unsigned short second = first + 1; second < result; ++ second)
                {
                    if (first * first + second * second == result * result)
                    {
                        ++alreadyFound;
                        printf("%hu^2 + %hu^2 = %hu^2\n", first, second, result);
                        break;
                    }
                    if (alreadyFound == *numberOfTriaples)
                        return;
                }
            }
        }
        previousLowerBound = minimumPossibleHypotenuse;
        ++minimumPossibleHypotenuse;
    }

    return;
}
