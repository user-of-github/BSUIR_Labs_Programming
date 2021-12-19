#include "bit_ops.h"

// Возвращает бит номер n числа x.
// Предполагается 0 <= n <= 31
const unsigned get_bit(const unsigned x, const unsigned n)
{
    unsigned int mask = 1;
    mask <<= n;
    const unsigned int result = x & mask;
    return (result != 0 ? 1 : 0);
}

// Выставляет значение v в бите номер n
// Предполагается что 0 <= n <= 31 и v равно 0 или 1
void set_bit(unsigned *x, const unsigned n, const unsigned v)
{
    (v == 1) ? ((*x) |= (v << n)) : ((*x) &= (~(1 << n)));
}

// Меняет значение бита номер n на противоположное.
// Предполагается что 0 <= n <= 31
void flip_bit(unsigned *x, const unsigned n)
{
    (*x) ^= (1 << n);
}

