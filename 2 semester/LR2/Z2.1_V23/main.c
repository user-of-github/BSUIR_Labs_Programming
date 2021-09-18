#include "eFruit.h"

int main(void)
{
    struct eFruit *session = GenerateSession();

    Launch(session);

    return 0;
}
