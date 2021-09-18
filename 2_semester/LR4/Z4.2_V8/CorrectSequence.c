#include "CorrectSequence.h"

const char *kErrorMalloc = "Unable to create array\n";
const char *kErrorFileAccess = "Unable to access the file\n";
const char *kTipContinue = "Press enter to finish\n";


FILE *OpenFile(const char *file_name)
{
    FILE *file;

    if ((file = fopen(file_name, "r")) == NULL)
    {
        printf("%s%s", kErrorFileAccess, kTipContinue);
        _getch();
        exit(0);
    }

    return file;
}

size_t GetLength(FILE *file)
{
    size_t response = 0;

    do
        ++response;
    while (getc(file) != EOF);

    return response;
}

char *GetText(FILE *file, const size_t length)
{
    char *text = (char *) (malloc(sizeof(char) * (length + 1)));
    if (text == NULL)
    {
        printf("%s%s", kErrorMalloc, kTipContinue);
        _getch();
        exit(0);
    }

    size_t index = 0;
    char symbol;

    size_t counter;
    for (counter = 0; counter < length; ++counter)
        text[counter] = fgetc(file);

    text[counter] = '\0';

    return text;
}

short FindIndex(const char *container, const size_t container_length, const char element)
{
    size_t counter;
    for (counter = 0; counter < container_length; ++counter)
        if (container[counter] == element)
            return ((short) (counter));

    return -1;
}

bool IsCorrectBracketSequence(const char *text, const size_t text_length)
{
    const size_t kBracketsArrayLength = 8;
    const char kBrackets[] = "()<>[]{}";

    char *stack = (char *) (malloc(sizeof(char) * text_length));

    if (stack == NULL)
    {
        printf("%s%s", kErrorMalloc, kTipContinue);
        _getch();
        exit(0);
    }

    size_t top_element_index = 0;

    size_t counter;
    for (counter = 0; counter < text_length; ++counter)
    {
        short index = FindIndex(kBrackets, kBracketsArrayLength, text[counter]);

        if (index == -1)
            continue;

        // odd => closing bracket, even => opening
        if (top_element_index == 0)
        {
            if (index % 2 == 0)
                stack[top_element_index++] = text[counter];
            else // closing bracket without opening
                return false;
        }
        else
        {
            if (index % 2 == 0) // opening
            {
                stack[top_element_index++] = text[counter];
            }
            else // closing
            {
                if (FindIndex(kBrackets, kBracketsArrayLength, stack[top_element_index - 1]) == index - 1)
                    --top_element_index; // found pair
                else
                    stack[top_element_index++] = text[counter];
            }
        }
    }

    free(stack);

    return (top_element_index == 0 ? true : false);
}