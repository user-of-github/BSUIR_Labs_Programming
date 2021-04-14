#include "Queue.h"
#include "BinaryTree.h"

int main()
{
    struct Queue *queue = InitializeQueue();
    Push(queue, 10);
    Push(queue, 20);
    Push(queue, 0);
    Push(queue, 15);
    Push(queue, 12);
    Push(queue, 7);
    Push(queue, 17);
    Push(queue, 5);

    struct BinaryTree *tree = InitializeBinaryTree();

    while (queue->size != 0)
    {
        int val = queue->first->data;
        Pop(queue);
        Add(tree, val);
    }

    Print(tree);
    CutLeaves(tree);
    Print(tree);

    int *arr = GetArrayOfItems(tree);
    size_t counter = 0;
    for (counter = 0; counter < tree->size; ++counter)
        printf("%d ", arr[counter]);

    _getch();

    return 0;
}
