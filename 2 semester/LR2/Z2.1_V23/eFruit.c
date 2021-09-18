#include "eFruit.h"

void ClearConsole()
{
    HANDLE consoleHandle = GetStdHandle(STD_OUTPUT_HANDLE);
    CONSOLE_SCREEN_BUFFER_INFO csbi;
    DWORD written;
    COORD zeroPos = {0, 0};

    if (GetConsoleScreenBufferInfo(consoleHandle, &csbi))
    {
        DWORD numChars = csbi.dwSize.X * csbi.dwSize.Y;

        FillConsoleOutputCharacter(consoleHandle, ' ', numChars, zeroPos, &written);
        FillConsoleOutputAttribute(consoleHandle, csbi.wAttributes, numChars, zeroPos, &written);
    }
    SetConsoleCursorPosition(consoleHandle, zeroPos);
}

const char kCurrency = '$';
const double kPriceTangerine = 1.14,
        kPricePeach = 1.00,
        kPriceGrape = 1.28,
        kPriceDeliveryPackage1 = 1,
        kPriceDeliveryPackage2 = 3,
        kPriceDeliveryPackage3 = 10,
        kPriceEveryExtraKilogram = 2,
        kLargeOrderDiscount = 0.1,
        kMaxWeightWithFixedDeliveryPrice = 20;

const char kShopName[] = "eFruit.shop",
        kShopLicenseNumber[] = "135464885",
        kShopInfo[] = "Belarus , Minsk , BSUIR , FCSN\nemail@emailcom, +123 45 67 89";

const unsigned short kMenuItemsCount = 7;
const char kMenuItems[7][20] = {"Order tangerines", "Order grape", "Order peaches", "Show Cart",
                                "Show full price", "Exit", "Show Shop Info"};

struct eFruit *GenerateSession()
{
    struct eFruit *new_session = malloc(sizeof(struct eFruit));
    new_session->tangerine = new_session->peach = new_session->grape = 0;
    new_session->total_price_products = new_session->delivery_price = new_session->total_weight = 0;

    return new_session;
}

void PrintCartInfo(struct eFruit *session)
{
    UpdateSession(session);

    if (session->total_price_products == 0)
    {
        printf("Cart is currently empty\n");
        return;
    }

    printf("CURRENTLY IN THE CART: \n____________________\n");
    if (session->grape > 0)
        printf("Grapes in the cart: %.3lf kg. Price: %.3lf %c\n", session->grape, session->grape * kPriceGrape,
               kCurrency);

    if ((*session).peach > 0)
        printf("Peaches in the cart: %.3lf kg. Price: %.3lf %c\n", session->peach, session->peach * kPricePeach,
               kCurrency);

    if ((*session).tangerine > 0)
        printf("Tangerines in the cart: %.3lf kg. Price: %.3lf %c\n", session->tangerine,
               session->tangerine * kPriceTangerine, kCurrency);

    printf("\n____________________\nTotal Price: %.3lf %c\n", session->total_price_products, kCurrency);
}

void UpdateTotalPrice(struct eFruit *session)
{
    session->total_price_products =
            session->tangerine * kPriceTangerine + session->peach * kPricePeach + session->grape * kPriceGrape;
}

void UpdateTotalWeight(struct eFruit *session)
{
    session->total_price_products = session->grape + session->peach + session->tangerine;
}

void UpdateDeliveryCost(struct eFruit *session)
{
    if (session->total_weight < 5)
        session->delivery_price = kPriceDeliveryPackage1;
    else if (session->total_weight < 20)
        session->delivery_price = kPriceDeliveryPackage2;
    else
        session->delivery_price = kPriceDeliveryPackage3 +
                                  kPriceEveryExtraKilogram * (session->total_weight - kMaxWeightWithFixedDeliveryPrice);
}

void UpdateSession(struct eFruit *session)
{
    UpdateTotalWeight(session);
    UpdateTotalPrice(session);
    UpdateDeliveryCost(session);
}

void OrderTangerines(struct eFruit *session)
{
    double kilograms;
    printf("Price for kg of tangerines %.2lf %c.Add to Cart: ", kPriceTangerine, kCurrency);
    if (scanf("%lf", &kilograms))
        if (kilograms > 0)
        {
            session->tangerine += kilograms;
            UpdateSession(session);
            return;
        }

    printf("Wrong input\n");
}

void OrderPeaches(struct eFruit *session)
{
    double kilograms;
    printf("Price for kg of peaches %.2lf %c.Add to Cart: ", kPricePeach, kCurrency);
    if (scanf("%lf", &kilograms))
        if (kilograms > 0)
        {
            session->peach += kilograms;
            UpdateSession(session);
            return;
        }

    printf("Wrong input\n");
}

void OrderGrape(struct eFruit *session)
{
    double kilograms;
    printf("Price for kg of grape %.2lf %c.Add to Cart: ", kPriceGrape, kCurrency);
    if (scanf("%lf", &kilograms))
        if (kilograms > 0)
        {
            session->grape += kilograms;
            UpdateSession(session);
            return;
        }

    printf("Wrong input\n");
}

void PrintShopInfo()
{
    printf("%s\n%s\n%s\n\n", kShopName, kShopLicenseNumber, kShopInfo);
}

void ShowFullPrice(struct eFruit *session)
{
    if (session->total_price_products == 0)
    {
        printf("Cart is currently empty\n");
        return;
    }

    UpdateSession(session);

    printf("Total price %.3lf %c", session->total_price_products, kCurrency);
    if (session->total_price_products > 100)
        printf(" + discount %.1lf %%  => Total price is %.2lf %c", kLargeOrderDiscount * 100,
               session->total_price_products * (1 - kLargeOrderDiscount), kCurrency);
    printf("\nDelivery cost: %.3lf %c\n", session->delivery_price, kCurrency);
}

void PrintMenu()
{
    unsigned short counter;
    for (counter = 0; counter < kMenuItemsCount; ++counter)
        printf("%hu. %s\n", counter + 1, kMenuItems[counter]);
}

void ProcessVariant(const unsigned short choosed, struct eFruit *session)
{
    switch (choosed)
    {
        case 0:
        {
            ClearConsole();
            OrderTangerines(session);
            return;
        }
        case 1:
        {
            ClearConsole();
            OrderGrape(session);
            return;
        }
        case 2:
        {
            ClearConsole();
            OrderPeaches(session);
            return;
        }
        case 3:
        {
            ClearConsole();
            PrintCartInfo(session);
            return;
        }
        case 4:
        {
            ClearConsole();
            ShowFullPrice(session);
            return;
        }
        case 5:
        {
            ClearConsole();
            return;
        }
        case 6:
        {
            ClearConsole();
            PrintShopInfo();
            return;
        }
        default:
            return;
    }
}

void Launch(struct eFruit *session)
{
    unsigned short variant;
    while (1)
    {
        ClearConsole();
        PrintMenu();
        scanf("%hd", &variant);
        ProcessVariant(variant - 1, session);
        if (variant == 6)
            break;
        printf("\nPress any key\n");
        getch();
    }
}