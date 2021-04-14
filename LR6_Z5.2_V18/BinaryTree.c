#include "BinaryTree.h"

struct BinaryTree *InitializeBinaryTree()
{
    struct BinaryTree *new_tree = (struct BinaryTree *) malloc(sizeof(struct BinaryTree));
    new_tree->size = 0;
    new_tree->root = NULL;
    return new_tree;
}

void Add(struct BinaryTree *tree, const int value)
{
    struct TreeItem *try_has = FindElement(tree, value);
    if (try_has != NULL)
    {
        try_has->data = value;
        return;
    }

    struct TreeItem *new_element = (struct TreeItem *) malloc(sizeof(struct TreeItem));

    new_element->data = value;
    new_element->left_child = new_element->right_child = new_element->parent = NULL;

    if (tree->size != 0)
    {
        struct TreeItem *element = tree->root,
                *parent = tree->root;

        while (element != NULL)
        {
            parent = element;
            element = value <= element->data ? element->left_child : element->right_child;
        }

        new_element->parent = parent;
        new_element->data <= parent->data ? (parent->left_child = new_element) : (parent->right_child = new_element);
    }
    else
    {
        tree->root = new_element;
    }

    ++tree->size;
}

void Delete(struct BinaryTree *tree, const int key)
{
    struct TreeItem *search_element = FindElement(tree, key);
    if (search_element != NULL && tree->size > 0)
    {
        DeleteByPointer(search_element);
        --tree->size;
    }

    if (tree->size == 0)
        tree->root = NULL;
}

void Clear(struct BinaryTree *tree)
{
    if (tree->root != NULL && tree->size != 0)
    {
        DeleteTree(tree->root);
        free(tree->root);
        tree->root = NULL;
    }
    tree->size = 0;
}

int Has(const struct BinaryTree *tree, const int key)
{
    return FindElement(tree, key) != NULL;
}

size_t Size(const struct BinaryTree *tree)
{
    return tree->size;
}

int Empty(const struct BinaryTree *tree)
{
    return tree->size == 0;
}

void Print(const struct BinaryTree *tree)
{
    printf("Tree: ");
    RecursivePrint(tree->root);
}

void RecursivePrint(const struct TreeItem *element)
{
    if (element != NULL)
    {
        RecursivePrint(element->left_child);
        printf("%d ", element->data);
        RecursivePrint(element->right_child);
    }
}

struct TreeItem *FindElement(const struct BinaryTree *tree, const int key)
{
    struct TreeItem *search_element = tree->root;

    while (search_element != NULL && search_element->data != key)
        search_element = key <= search_element->data ? search_element->left_child
                                                     : search_element->right_child;

    return search_element;
}

void DeleteByPointer(struct TreeItem *target)
{
    if (target == NULL) return;

    if (target->left_child != NULL && target->right_child != NULL)
    {
        struct TreeItem *local_max = GetMaximumChild(target->left_child);
        target->data = local_max->data;
        DeleteByPointer(local_max);
    }
    else if (target->left_child != NULL)
        (target == target->parent->left_child) ? (target->parent->left_child = target->left_child)
                                               : (target->parent->right_child = target->left_child);
    else if (target->right_child != NULL)
        (target == target->parent->right_child) ? (target->parent->right_child = target->right_child)
                                                : (target->parent->left_child = target->right_child);
    else
        (target == target->parent->left_child) ? (target->parent->left_child = NULL)
                                               : (target->parent->right_child = NULL);
}

struct TreeItem *GetMaximumChild(const struct TreeItem *start)
{
    struct TreeItem *response = start;

    while (response->right_child != NULL)
        response = response->right_child;

    return response;
}

struct TreeItem *GetMinimumChild(const struct TreeItem *start)
{
    struct TreeItem *response = start;

    while (response->left_child != NULL)
        response = response->left_child;

    return response;
}

void DeleteTree(struct TreeItem *node)
{
    if (node == NULL)
        return;

    DeleteTree(node->left_child);
    DeleteTree(node->right_child);

    free(node);
    node = NULL;
}

void RecursiveCutLeaves(struct BinaryTree *tree, struct TreeItem *item)
{
    if (item != NULL)
        return;


    struct TreeItem *left = item->left_child,
            *right = item->right_child;
    if (!right && !left)
        return;

    if (right != NULL && left == NULL)
        RecursiveCutLeaves(tree, right);
    else if (right == NULL && left != NULL)
        RecursiveCutLeaves(tree, left);
    else if (right->right_child == NULL && right->left_child == NULL && left->left_child == NULL &&
             left->right_child == NULL)
    {
        DeleteTree(right->left_child);
        tree->size -= 1;
    }
    else
    {
        RecursiveCutLeaves(tree, right);
        RecursiveCutLeaves(tree, left);
    }
}

void CutLeaves(struct BinaryTree *tree)
{
    RecursiveCutLeaves(tree, tree->root);
}


void FillArray(int *arr, const struct TreeItem *item, const size_t counter)
{
    if (item == NULL)
        return;

    FillArray(arr, item->left_child, counter);
    FillArray(arr, item->left_child, counter + 1);
    arr[counter + 2] = item->data;
}

int *GetArrayOfItems(const struct BinaryTree *tree)
{
    int *response = (int *)(malloc(sizeof (int)  * tree->size));
    FillArray(response, tree->root, 0);
    return response;
}