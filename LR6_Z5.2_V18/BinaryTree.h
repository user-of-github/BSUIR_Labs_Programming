#ifndef LR6_Z5_2_V18_BINARYTREE_H
#define LR6_Z5_2_V18_BINARYTREE_H

#include <stdio.h>
#include <malloc.h>

struct TreeItem
{
    struct TreeItem *left_child,
            *right_child,
            *parent;
    int data;
};

struct BinaryTree
{
    struct TreeItem *root;
    size_t size;
};

struct BinaryTree *InitializeBinaryTree();
void Add(struct BinaryTree *, const int);

void Delete(struct BinaryTree *, const int);

void Clear(struct BinaryTree *);

int Has(const struct BinaryTree *, const int);

size_t Size(const struct BinaryTree *);

int Empty(const struct BinaryTree *);

void Print(const struct BinaryTree *);

void RecursivePrint(const struct TreeItem *);

struct TreeItem *FindElement(const struct BinaryTree *, const int);

void DeleteByPointer(struct TreeItem *);

void DeleteTree(struct TreeItem *);

struct TreeItem *GetMaximumChild(const struct TreeItem *);

struct TreeItem *GetMinimumChild(const struct TreeItem *);

void RecursiveDeleteTree(struct TreeItem *);

void CutLeaves(struct BinaryTree *);

int *GetArrayOfItems(const struct BinaryTree *);

#endif //LR6_Z5_2_V18_BINARYTREE_H
