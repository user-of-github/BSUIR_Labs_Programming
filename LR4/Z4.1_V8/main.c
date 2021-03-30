
#include "AnalyzeWords.h"

extern const char *kTipContinue;

int main()
{
    const char kDivider = '=';
    struct ArrayData1 input_data = GetTextFromKeyboard(kDivider);
    char *text = input_data.array;
    size_t length = input_data.length;

    //printf('\n');

    struct ArrayData2 words_data = GetWordsArray(text, length);
    char **words = words_data.array;
    size_t number_words = words_data.length;

    size_t counter = 0;
    for (counter = 0; counter < number_words; ++counter)
    {
        printf("%s\n", words[counter]);
    }

    free(text);

    printf("\n%s\n", kTipContinue);
    _getch();
    return 0;
}


