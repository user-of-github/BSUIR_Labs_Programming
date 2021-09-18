#ifndef PYTHAGOREANTRIAPLE_H_INCLUDED
#define PYTHAGOREANTRIAPLE_H_INCLUDED

#include <malloc.h>
#include <stdio.h>

struct Triaple
{
    unsigned short first, second, result;
};

struct Triaple *GetPythagoreanTriaples(const unsigned short number_of_triaples);

void PrintTriaples(const struct Triaple *data, const unsigned short size);

#endif // PYTHAGOREANTRIAPLE_H_INCLUDED
