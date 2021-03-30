#include "AnalyzeWords.h"


const char *kErrorMemory = "Unable to allocate memory";
const char *kTipContinue = "Press Enter to continue";


void CheckArray(const char *array)
{
    if (array == NULL)
    {
        printf("%s\n%s\n", kErrorMemory, kTipContinue);
        _getch();
        exit(0);
    }
}

struct ArrayData1 GetTextFromKeyboard(const char divider)
{
    const size_t kStartCapacity = 100;
    size_t capacity = kStartCapacity,
            length = 0;
    printf("Enter some text. Finish by printing %c\n", divider);
    char *text = (char *) (malloc(sizeof(char) * capacity));

    CheckArray(text);

    char symbol = '-';
    while (symbol != divider)
    {
        symbol = getchar();

        if (symbol == divider)
            break;
        if (length == capacity)
        {
            capacity *= 2;
            text = (char *) (realloc(text, sizeof(char) * capacity));

            CheckArray(text);
        }
        text[length++] = symbol;
    }

    struct ArrayData1 response;
    response.length = length;
    response.array = text;

    return response;
}

void Trim(const char *text, const size_t length, size_t *index)
{
    while ((*index < length) && ((text[*index] == ' ') || (text[*index] == '\n')))
        ++(*index);
}

size_t GetWordEndIndex(const char *text, const size_t length, size_t index_from)
{
    while ((index_from < length) && (text[index_from] != ' ') && (text[index_from] != '\n'))
        ++index_from;
    return --index_from;
}

char *GetWordFromText(const char *text, const size_t index_from, const size_t index_to)
{
    size_t length = index_to - index_from + 1;
    char *word = (char *) (malloc(sizeof(char) * (length + 1)));

    CheckArray(word);

    size_t counter = index_from;
    for (counter = index_from; counter <= index_to; ++counter)
        word[counter - index_from] = text[counter];

    word[length] = '\n';

    return word;
}

struct ArrayData2 GetWordsArray(const char *text, const size_t length)
{
    const size_t kStartCapacity = 5;
    size_t capacity = kStartCapacity,
            size = 0;
    struct ArrayData2 response;
    char **words;
    words = (char**)(malloc(sizeof(char*) * capacity));
    //CheckArray((const char *) words);

    size_t index = 0;
    while (index < length)
    {
        Trim(text, length, &index);
        size_t index_start = index,
                index_end = GetWordEndIndex(text, length, index_start);
        char *new_word = GetWordFromText(text, index_start, index_end);

        if (length == capacity)
        {
            capacity *= 2;
            words = (char **) (realloc(words, sizeof(char *) * capacity));
            //CheckArray(words);
        }
        words[size++] = new_word;
        index = index_end + 1;
    }

    response.array = words;
    response.length = size - 1;

    return response;
}