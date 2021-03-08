#ifndef Z2_1_V23_EFRUIT_H
#define Z2_1_V23_EFRUIT_H

#include <malloc.h>
#include <stdio.h>
#include <conio.h>
#include <windows.h>

struct eFruit
{
    double tangerine;
    double grape;
    double peach;
    double total_price_products;
    double total_weight;
    double delivery_price;
};

struct eFruit *GenerateSession();

void PrintCartInfo(struct eFruit *);

void UpdateTotalPrice(struct eFruit *);

void UpdateTotalWeight(struct eFruit *);

void UpdateDeliveryCost(struct eFruit *);

void UpdateSession(struct eFruit *);

void OrderTangerines(struct eFruit *);

void PrintShopInfo();

void ShowFullPrice(struct eFruit *);

void PrintMenu();

void ProcessVariant(const unsigned short, struct eFruit *);

void Launch(struct eFruit *);

#endif //Z2_1_V23_EFRUIT_H
