#ifndef Z4_2_V8_CORRECTSEQUENCE_H
#define Z4_2_V8_CORRECTSEQUENCE_H

#include <stdio.h>
#include <stdlib.h>
#include <conio.h>

typedef short bool;
#define true 1
#define false 0


FILE *OpenFile(const char *file_name);

size_t GetLength(FILE *file);

char *GetText(FILE *file, const size_t length);

short FindIndex(const char *container, const size_t container_length, const char element);

bool IsCorrectBracketSequence(const char *text, const size_t text_length);


#endif //Z4_2_V8_CORRECTSEQUENCE_H
