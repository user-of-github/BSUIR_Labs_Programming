#include "AnalyzeWords.h"

extern const char *kTipContinue;
const char kDivider = '=';

int main()
{
    struct OneDimensionalArrayData input_data = GetTextFromKeyboard(kDivider);

    struct TwoDimensionalArrayData words_data = GetWordsArray(input_data.array, input_data.length);
    char **words = words_data.array;
    size_t number_words = words_data.length;
    free(input_data.array);

    PrintWords((const char **) words, number_words);

    struct TwoDimensionalArrayData inverted_words_list = GetInvertedWordsList((const char **) words, number_words);

    char *response = GetFlattenArray((const char **) inverted_words_list.array, inverted_words_list.length);

    printf("Inverted pairs of words: \n%s\n", response);

    FreeWordsArray(words, number_words);

    printf("\n%s\n", kTipContinue);
    _getch();

    return 0;
}


