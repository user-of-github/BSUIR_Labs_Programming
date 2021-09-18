#include "AnalyzeWords.h"


const char *kErrorMemory = "Unable to allocate memory";
const char *kTipContinue = "Press Enter to continue";


void CheckOneDimensionalArray(const char *array)
{
    if (array == NULL)
    {
        printf("%s\n%s\n", kErrorMemory, kTipContinue);
        _getch();
        exit(0);
    }
}

void CheckTwoDimensionalArray(const char **array)
{
    if (array == NULL)
    {
        printf("%s\n%s\n", kErrorMemory, kTipContinue);
        _getch();
        exit(0);
    }
}

struct OneDimensionalArrayData GetTextFromKeyboard(const char divider)
{
    const size_t kStartCapacity = 100;

    size_t capacity = kStartCapacity,
            length = 0;

    printf("Enter some text. Finish by printing %c\n", divider);

    char *text = (char *) (malloc(sizeof(char) * capacity));
    CheckOneDimensionalArray(text);

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
            CheckOneDimensionalArray(text);
        }
        text[length++] = symbol;
    }

    text[length] = '\0';

    struct OneDimensionalArrayData response;
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
    while (index_from < length && text[index_from] != ' ' && text[index_from] != '\n' && text[index_from] != '\t')
        ++index_from;
    return --index_from;
}

char *GetSingleWordFromText(const char *text, const size_t index_from, const size_t index_to)
{
    size_t length = index_to - index_from + 1;

    char *word = (char *) (malloc(sizeof(char) * (length + 1)));
    CheckOneDimensionalArray(word);

    size_t counter;
    for (counter = index_from; counter <= index_to; ++counter)
        word[counter - index_from] = text[counter];

    word[length] = '\0';

    return word;
}

struct TwoDimensionalArrayData GetWordsArray(const char *text, const size_t length)
{
    const size_t kStartCapacity = 10;

    size_t capacity = kStartCapacity,
            size = 0;

    char **words = (char **) (malloc(sizeof(char *) * capacity));
    CheckTwoDimensionalArray((const char **) (const char **) (const char **) (const char **) (const char **) words);

    size_t index = 0;
    while (index < length)
    {
        Trim(text, length, &index);

        if (index == length - 1 && (text[index] == ' ' || text[index] == '\n'))
            break;

        size_t index_start = index, index_end = GetWordEndIndex(text, length, index_start);

        if (index_end < index_start)
        {
            index = index_start + 1;
            continue;
        }

        if (size == capacity)
        {
            capacity *= 2;
            words = (char **) (realloc(words, sizeof(char *) * capacity));
            CheckTwoDimensionalArray((const char **) words);
        }

        char *new_word = GetSingleWordFromText(text, index_start, index_end);
        words[size++] = new_word;
        index = index_end + 1;
    }

    struct TwoDimensionalArrayData response;
    response.array = words;
    response.length = size;

    return response;
}

void PrintWords(const char **words, const size_t number_words)
{
    printf("Detected words: [%u]{", (unsigned int) (number_words));
    size_t counter;
    for (counter = 0; counter < number_words; ++counter)
        printf(" %s ", words[counter]);
    printf("}\n\n");
}

void FreeWordsArray(char **array, const size_t rows)
{
    size_t counter;
    for (counter = 0; counter < rows; ++counter)
        free(array[counter]);
    free(array);
}

bool CheckTheWordsForInversion(const char *first, const char *second, const size_t size_first, const size_t size_second)
{
    if (size_first != size_second)
        return false;

    size_t counter;
    for (counter = 0; counter < size_second; ++counter)
        if (first[counter] != second[size_first - counter - 1])
            return false;

    return true;
}

size_t GetLength(const char *word)
{
    size_t response = 0;
    while (word[response] != '\0')
        ++response;
    return response;
}

char *GlueWordsTogether(const char *first, const char *second, const size_t size_first, const size_t size_second)
{
    const char kDivider = ' ';

    size_t length = size_first + size_second + 1;

    char *new_word = (char *) (malloc(sizeof(char) * (length + 2))); // +2 => '\0' and kDivider
    CheckOneDimensionalArray(new_word);

    size_t counter;
    for (counter = 0; counter < size_first; ++counter)
        new_word[counter] = first[counter];

    new_word[size_first] = kDivider;

    for (counter = 0; counter < size_second; ++counter)
        new_word[counter + size_first + 1] = second[counter];
    new_word[length] = '\0';

    return new_word;
}

struct TwoDimensionalArrayData GetInvertedWordsList(const char **words, const size_t number_words)
{
    const size_t kStartCapacity = 5;

    size_t capacity = kStartCapacity, size = 0;

    char **inverted_words = (char **) (malloc(sizeof(char *) * capacity));
    CheckTwoDimensionalArray((const char **) inverted_words);

    size_t counter1, counter2;
    for (counter1 = 0; counter1 < number_words; ++counter1)
    {
        for (counter2 = counter1 + 1; counter2 < number_words; ++counter2)
        {
            size_t size_first = GetLength(words[counter1]),
                    size_second = GetLength(words[counter2]);

            if (CheckTheWordsForInversion(words[counter1], words[counter2], size_first, size_second) == true)
            {
                if (size == capacity)
                {
                    capacity *= 2;
                    inverted_words = (char **) (realloc(inverted_words, sizeof(char *) * capacity));
                    CheckTwoDimensionalArray((const char **) inverted_words);
                }
                inverted_words[size++] = GlueWordsTogether(words[counter1], words[counter2], size_first, size_second);
            }
        }
    }

    struct TwoDimensionalArrayData response;
    response.array = inverted_words;
    response.length = size;

    return response;
}

char *GetFlattenArray(const char **array, const size_t rows)
{
    size_t general_length = 0;
    size_t counter;
    for (counter = 0; counter < rows; ++counter)
        general_length += GetLength(array[counter]);

    size_t total_length = general_length + (rows - 1);

    char *response = (char *) (malloc(sizeof(char) * (total_length + 1)));
    CheckOneDimensionalArray(response);

    size_t general_counter = 0;
    
    size_t counter_words, counter_symbols;
    for (counter_words = 0; counter_words < rows; ++counter_words)
    {
        for (counter_symbols = 0; array[counter_words][counter_symbols] != '\0'; ++counter_symbols)
            response[general_counter++] = array[counter_words][counter_symbols];
        response[general_counter++] = '\n';
    }
    response[total_length] = '\0';

    return response;
}