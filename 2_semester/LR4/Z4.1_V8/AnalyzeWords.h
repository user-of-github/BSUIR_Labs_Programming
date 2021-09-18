#ifndef Z4_1_V8_ANALYZEWORDS_H
#define Z4_1_V8_ANALYZEWORDS_H

#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

typedef short bool;
#define true 1
#define false 0

void CheckOneDimensionalArray(const char *array);

void CheckTwoDimensionalArray(const char **array);

struct OneDimensionalArrayData
{
    size_t length;
    char *array;
};

struct TwoDimensionalArrayData
{
    size_t length;
    char **array;
};

struct OneDimensionalArrayData GetTextFromKeyboard(const char divider);

void Trim(const char *text, const size_t length, size_t *index);

size_t GetWordEndIndex(const char *text, const size_t length, size_t index_from);

char *GetSingleWordFromText(const char *text, const size_t index_from, const size_t index_to);

struct TwoDimensionalArrayData GetWordsArray(const char *text, const size_t length);

void PrintWords(const char **words, const size_t number_words);

void FreeWordsArray(char **array, const size_t rows);

bool CheckTheWordsForInversion(const char *first, const char *second,
                               const size_t size_first, const size_t size_second);

struct TwoDimensionalArrayData GetInvertedWordsList(const char **words, const size_t number_words);

char *GetFlattenArray(const char **array, const size_t rows);

#endif //Z4_1_V8_ANALYZEWORDS_H
