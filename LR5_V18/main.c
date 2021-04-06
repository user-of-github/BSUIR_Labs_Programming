#include "QueueAtStore.h"

int main()
{
    struct Queue *test = InitializeQueue();

    struct Person *person_1 = CreatePerson("Nikita Slutski");
    Push(test, person_1);

    struct Person *person_2 = CreatePerson("Daniil Bondarkov");
    Push(test, person_2);

    PrintNames(test);

    Pop(test);
    PrintNames(test);

    Pop(test);
    PrintNames(test);

    Pop(test);
    PrintNames(test);

    struct Person *person_3 = CreatePerson("Daniil Bondarkov");
    Push(test, person_3);
    PrintNames(test);


    return 0;
}
