#ifndef Z4_2_V8_TEST_H
#define Z4_2_V8_TEST_H

#include "CorrectSequence.h"
#include <assert>

#undef main

int main(void)
{
    const char test_1[] = "{{ app }} (([ 5 + 5 ][ Nikitos ]))";
    const size_t test_1_length = 34;

    assert(CorrectBracketSequence(test_1, test_1_length));

    const char test_2[] = "{{ app2 }}{} [(([ 5 + 5 ][ Nikitos ]))";
    const size_t test_1_length = 38;

    assert(CorrectBracketSequence(test_1, test_1_length));

    _getch();

    return 0;
}

#endif //Z4_2_V8_TEST_H
