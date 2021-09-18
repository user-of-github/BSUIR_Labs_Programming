#include "QueueAtStore.h"

extern const char *kTipContinue;

const size_t kNamesAmount = 10;
const char *const kNames[] = {
        "Nikita Slutski", "Ivan Udovin", "Daniil Bondarkov",
        "Yaroslau Suhovej", "Alexander Khrapko", "Stanislav Levankou",
        "Maksim Katanaev", "Dmitrij Lasareu", "Dmitrij Kalinka",
        "Anton Moroz"};


const size_t kTotalTimeForProgram = 30 * 1000;

int main(void)
{
    srand(time(NULL));

    struct Queue *test = InitializeQueue();

    clock_t start = clock();
    size_t milliseconds, next_stop = 0;

    do
    {
        clock_t difference = clock() - start;
        milliseconds = difference * 1000 / CLOCKS_PER_SEC;

        if (milliseconds <= next_stop) continue;

        next_stop = milliseconds + (rand() % 5 + 1) * 1000;

        if (test->size == 0)
        {
            size_t index = rand() % kNamesAmount;
            printf("%s has come to queue\n", kNames[index]);
            Push(test, CreatePerson(kNames[index]));
        }
        else
        {
            if (rand() % 10 + 1 <= 5) // add
            {
                size_t index = rand() % kNamesAmount;
                printf("%s has come to queue\n", kNames[index]);
                Push(test, CreatePerson(kNames[index]));
            }
            else // pop
            {
                printf("%s has left queue. Spent there %u seconds\n", test->first->data->name,
                       (unsigned int) (time(NULL) - test->first->data->time));
                Pop(test);
            }
        }
        PrintNames(test);

    } while (milliseconds <= kTotalTimeForProgram);


    FreeQueue(test);

    printf("%s\n", kTipContinue);
    _getch();

    return 0;
}
