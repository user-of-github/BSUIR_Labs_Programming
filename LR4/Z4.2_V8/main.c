#include "CorrectSequence.h"

extern const char *kTipContinue;

int main(void)
{
    const char *kFileDataName = "data.txt";

    FILE *file_test = OpenFile(kFileDataName);
    size_t text_length = GetLength(file_test);
    fclose(file_test);

    FILE *file_text = OpenFile(kFileDataName);
    char *text = GetText(file_text, text_length);
    fclose(file_text);

    printf("%s\n", text);
    printf(IsCorrectBracketSequence(text, text_length) == true ? "Correct" : "Incorrect");

    printf("\n%s", kTipContinue);
    free(text);
    _getch();

    return 0;
}

