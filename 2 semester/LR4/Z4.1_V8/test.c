#ifndef Z4_1_V8_TEST_C
#define Z4_1_V8_TEST_C

#include <assert.h>
#include "AnalyzeWords.h"

#undef main

extern const char *kTipContinue;

bool EqualStrings(const char *first, const char *second)
{
    size_t counter = 0;
    while (first[counter] != '\0')
    {
        if (first[counter] != second[counter])
            return false;
        ++counter;
    }

    return true;
}

int main(void)
{
    printf("Test has begun \n");

    // FIRST TEST (CORRECT)
    struct OneDimensionalArrayData test_data_1;
    test_data_1.array = "hello olleh test some test asus susa";
    test_data_1.length = 36;
    struct TwoDimensionalArrayData words_data = GetWordsArray(test_data_1.array, test_data_1.length);
    char **words = words_data.array;
    size_t number_words = words_data.length;
    free(test_data_1.array);
    struct TwoDimensionalArrayData inverted_words_list = GetInvertedWordsList((const char **) words, number_words);
    char *response = GetFlattenArray((const char **) inverted_words_list.array, inverted_words_list.length);
    assert(EqualStrings(response, "hello olleh\nasus susa\n"));
    FreeWordsArray(words, number_words);


    // SECOND TEST (WRONG)
    struct OneDimensionalArrayData test_data_2;
    test_data_2.array = "march is over\n april is coming\n hcram si";
    test_data_2.length = 42;
    struct TwoDimensionalArrayData words_data_2 = GetWordsArray(test_data_2.array, test_data_2.length);
    char **words2 = words_data_2.array;
    size_t number_words_2 = words_data_2.length;
    free(test_data_2.array);
    struct TwoDimensionalArrayData inverted_words_list_2 = GetInvertedWordsList((const char **) words2, number_words_2);
    char *response2 = GetFlattenArray((const char **) inverted_words_list_2.array, inverted_words_list_2.length);

    assert(EqualStrings(response2, "march hcram\nis si\n"));
    FreeWordsArray(words2, number_words_2);

    printf("\n%s\n", kTipContinue);
    _getch();

    return 0;
}

#endif //Z4_1_V8_TEST_C
