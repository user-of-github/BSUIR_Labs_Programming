#include "Queue.h"
#include "BinaryTree.h"
#include <assert.h>

#undef main

int CompareArrays(int *arr1, int *arr2, size_t length)
{
    size_t counter = 0;
    for (counter = 0; counter < length; ++counter)
        if (arr1[counter] != arr2[counter])
            return 0;

        return 1;
}

int main(void)
{
    struct BinaryTree *tree = InitializeBinaryTree();

    struct Queue *queue = InitializeQueue();
    Push(queue, 10);
    Push(queue, 20);
    Push(queue, 0);
    Push(queue, 15);
    Push(queue, 12);
    Push(queue, 7);
    Push(queue, 17);
    Push(queue, 5);


    while (queue->size != 0)
    {
        int val = queue->first->data;
        Pop(queue);
        Add(tree, val);
    }

    int answ[] = {0, 5 ,7, 10, 12, 15, 17, 20};

    assert(CompareArrays(answ, GetArrayOfItems(tree), tree->size));
    return 0;
}
