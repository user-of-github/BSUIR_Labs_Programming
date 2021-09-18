#ifndef LR6_Z5_2_V18_QUEUE_H
#define LR6_Z5_2_V18_QUEUE_H

#include <stdio.h>
#include <conio.h>
#include <stdlib.h>

struct QueueItem
{
    int data;
    struct QueueItem *next, *previous;
};

struct Queue
{
    size_t size;
    struct QueueItem *first, *last;
};

void ExitFromProgram(const char *);

void CheckMemoryItem(const struct QueueItem *);

void CheckMemoryQueue(const struct Queue *);

struct QueueItem *CreateItem(const int);

void FreeItem(struct QueueItem *);

void FreeQueue(struct Queue *);

struct Queue *InitializeQueue();

void Push(struct Queue *, const int);

void Pop(struct Queue *);

#endif //LR6_Z5_2_V18_QUEUE_H
