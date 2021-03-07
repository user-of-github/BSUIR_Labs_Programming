#include "pythagoreanTriaple.h"


struct Triaple *GetPythagoreanTriaples(const unsigned short number_of_triaples)
{
    unsigned short minimum_possible_hypotenuse = 5,
            already_found = 0,
            previous_lower_bound = 0;

    struct Triaple *response = (struct Triaple*)malloc(number_of_triaples * sizeof(struct Triaple));

    while (already_found < number_of_triaples)
    {
        unsigned short result;
        for (result = minimum_possible_hypotenuse; result > previous_lower_bound; --result)
        {
            unsigned short first;
            for (first = 1; first < result; ++first)
            {
                unsigned short second;
                for (second = first + 1; second < result; ++second)
                {
                    if (first * first + second * second == result * result)
                    {
                        struct Triaple new_triaple;
                        new_triaple.first = first;
                        new_triaple.second = second;
                        new_triaple.result = result;
                        response[already_found++] = new_triaple;
                        break;
                    }
                    if (already_found == number_of_triaples)
                        return response;
                }
            }
        }
        previous_lower_bound = minimum_possible_hypotenuse;
        ++minimum_possible_hypotenuse;
    }
    return response;
}

void PrintTriaples(const struct Triaple *data, const unsigned short size)
{
    unsigned short counter = 0;
    for (counter = 0; counter < size; ++counter)
        printf("%hu^2 + %hu^2 = %hu^2\n", data[counter].first, data[counter].second, data[counter].result);
}