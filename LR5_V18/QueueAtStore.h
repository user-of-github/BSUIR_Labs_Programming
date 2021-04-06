#ifndef LR5_V18_QUEUEATSTORE_H
#define LR5_V18_QUEUEATSTORE_H

#include <stdio.h>
#include <malloc.h>
#include <string.h>
#include <conio.h>

struct Person
{
    char *name;
};

struct Item
{
    struct Person *data;
    struct Item *next, *previous;
};

struct Queue
{
    size_t size;
    struct Item *first, *last;
};

void ExitFromProgram(const char *);

void CheckMemoryChar(const char *);

void CheckMemoryPerson(const struct Person *);

void CheckMemoryItem(const struct Person *);

void CheckMemoryQueue(const struct Queue *);

void CheckMemoryPointer(const struct Person *);

void CheckMemoryPointerChar(const char **);

struct Person *CreatePerson(const char *);

struct Item *CreateItem(const struct Person *);

void FreeItem(struct Item *);

struct Queue *InitializeQueue();

void Push(struct Queue *, const struct Person *);

void Pop(struct Queue *);

struct Person **GetPeopleList(const struct Queue *);

char **GetPeopleNameList(const struct Person **, const size_t);

void PrintNames(const struct Queue *);

#endif //LR5_V18_QUEUEATSTORE_H
