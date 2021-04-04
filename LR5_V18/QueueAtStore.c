#include "QueueAtStore.h"

const char *ErrorMemory = "Unable to allocate memory";

void ExitFromProgram(const char *error)
{
    printf("%s\n", error);
    _getch();
    exit(0);
}

void CheckMemoryChar(const char *word)
{
    if (word == NULL)
        ExitFromProgram(ErrorMemory);
}

void CheckMemoryPerson(const struct Person *person)
{
    if (person == NULL)
        ExitFromProgram(ErrorMemory);
}

void CheckMemoryItem(const struct Person *item)
{
    if (item == NULL)
        ExitFromProgram(ErrorMemory);
}

void CheckMemoryQueue(const struct Queue *queue)
{
    if (queue == NULL)
        ExitFromProgram(ErrorMemory);
}

struct Person *CreatePerson(const char *name)
{
    struct Person *response = (struct Person *) (malloc(sizeof(struct Person)));
    CheckMemoryPerson(response);
    response->name = (char *) (malloc(sizeof(char) * (strlen(name) + 1)));
    CheckMemoryChar(response->name);
    memcpy(response->name, name, strlen(name) + 1);
    return response;
}

struct Item *CreateItem(const struct Person *person)
{
    struct Item *response = (struct Item *) (malloc(sizeof(struct Item)));
    CheckMemoryItem((const struct Person *) response);
    response->data = person;
    response->next = NULL;
    response->previous = NULL;
    return response;
}

void FreeItem(struct Item *item)
{
    free(item->data->name);
    free(item->data);
    free(item);
}

struct Queue *InitializeQueue()
{
    struct Queue *response = (struct Queue *) (malloc(sizeof(struct Queue)));
    CheckMemoryQueue(response);
    response->first = response->last = NULL;
    response->size = 0;

    return response;
}

void Push(struct Queue *queue, const struct Person *new_person)
{
    struct Item *new_item = CreateItem(new_person);

    if (queue->first == NULL)
    {
        queue->last = queue->first = new_item;
    }
    else
    {
        struct Item *current_last = queue->last;
        queue->last = new_item;
        new_item->next = current_last;
        current_last->previous = new_item;
    }

    ++queue->size;
}

void Pop(struct Queue *queue)
{
    if (queue->size == 0)
        return;

    if (queue->size != 1)
    {
        struct Item *current_first = queue->first;
        struct Item *new_first = current_first->previous;

        new_first->next = NULL;
        queue->first = new_first;

        FreeItem(current_first);
    }
    else
    {
        FreeItem(queue->first);
        queue->first = queue->last = NULL;
    }

    --queue->size;
}
