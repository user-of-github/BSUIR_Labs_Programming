#ifndef Z4_1_V8_ANALYZEWORDS_H
#define Z4_1_V8_ANALYZEWORDS_H


#include <stdio.h>
#include <conio.h>
#include <stdlib.h>




void CheckArray(const char *array);

struct ArrayData1
{
    size_t length;
    char *array;
};

struct ArrayData2
{
    size_t length;
    char **array;
};

struct ArrayData1 GetTextFromKeyboard(const char divider);

void Trim(const char *text, const size_t length, size_t *index);

size_t GetWordEndIndex(const char *text, const size_t length, size_t index_from);

char *GetWordFromText(const char *text, const size_t index_from, const size_t index_to);

struct ArrayData2 GetWordsArray(const char *text, const size_t length);


#endif //Z4_1_V8_ANALYZEWORDS_H
