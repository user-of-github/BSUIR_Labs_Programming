#include "QueueAtStore.h"
#include <assert.h>

extern const char *kTipContinue;

int CompareArrays(const char **first, const char *const[], const size_t length_first, const size_t length_second);

#undef main

int main(void)
{
    printf("Test has begun\n");

    struct Queue *test = InitializeQueue();
    Push(test, CreatePerson("Michael"));
    Push(test, CreatePerson("Anna"));
    Pop(test);
    Pop(test);
    Push(test, CreatePerson("Nikita"));
    Push(test, CreatePerson("Vera"));

    const char *const test_answer[] = {"Nikita", "Vera"};

    assert(CompareArrays((const char **) GetPeopleNameList((const struct Person **) GetPeopleList(test), test->size),
                         test_answer, test->size, 2) == 1);


    printf("Test has finished\n%s\n", kTipContinue);
    FreeQueue(test);
    _getch();
    return 0;
}

int CompareArrays(const char **first, const char *const second[], const size_t length_first, const size_t length_second)
{
    size_t counter;
    for (counter = 0; counter < length_first; ++counter)
        if (strcmp(first[counter], second[counter]) != 0)
            return 0;

    return 1;
}