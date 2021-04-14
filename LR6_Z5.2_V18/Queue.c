#include "Queue.h"

const char *kErrorMemory = "Unable to allocate memory";
const char *kTipContinue = "Press Enter";

void ExitFromProgram(const char *error)
{
    printf("%s\n%s", error, kTipContinue);
    _getch();
    exit(0);
}


void CheckMemoryItem(const struct QueueItem *item)
{
    if (item == NULL) ExitFromProgram(kErrorMemory);
}

void CheckMemoryQueue(const struct Queue *queue)
{
    if (queue == NULL) ExitFromProgram(kErrorMemory);
}


struct QueueItem *CreateItem(const int value)
{
    struct QueueItem *response = (struct QueueItem *) (malloc(sizeof(struct QueueItem)));
    CheckMemoryItem((const struct QueueItem *) response);

    response->data = value;
    response->next = response->previous = NULL;

    return response;
}

void FreeItem(struct QueueItem *item)
{
    free(item);
}

void FreeQueue(struct Queue *queue)
{
    struct QueueItem *current = queue->first;
    while (current)
    {
        struct QueueItem *copy_link = current;
        current = current->previous;
        FreeItem(copy_link);
    }
    free(queue);
}

struct Queue *InitializeQueue()
{
    struct Queue *response = (struct Queue *) (malloc(sizeof(struct Queue)));
    CheckMemoryQueue(response);

    response->first = response->last = NULL;
    response->size = 0;

    return response;
}

void Push(struct Queue *queue, const int value)
{
    struct QueueItem *new_item = CreateItem(value);

    if (queue->first == NULL)
    {
        queue->last = queue->first = new_item;
    }
    else
    {
        struct QueueItem *current_last = queue->last;
        queue->last = current_last->previous = new_item;
        new_item->next = current_last;
    }

    ++queue->size;
}

void Pop(struct Queue *queue)
{
    if (queue->size == 0) return;

    if (queue->size != 1)
    {
        struct QueueItem *current_first = queue->first;
        struct QueueItem *new_first = current_first->previous;

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
