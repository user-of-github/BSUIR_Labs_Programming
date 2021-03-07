#include "main.h"
#include <assert.h>

void Test(const struct Triaple *response)
{
    assert(response[0].result * response[0].result == response[0].first * response[0].first + response[0].second * response[0].second);
    assert(response[1].result * response[1].result == response[1].first * response[1].first + response[1].second * response[1].second);
    assert(response[3].result * response[3].result == response[3].first * response[3].first + response[3].second * response[3].second);
    assert(response[5].result * response[5].result == response[5].first * response[5].first + response[5].second * response[5].second);
    assert(response[7].result * response[7].result == response[7].first * response[7].first + response[7].second * response[7].second);
}

int main()
{
    const unsigned short number_of_triaples = 10;
    struct Triaple* response = (struct Triaple *) GetPythagoreanTriaples(number_of_triaples);

    PrintTriaples(response, number_of_triaples);

    Test(response);
    return 0;
}
