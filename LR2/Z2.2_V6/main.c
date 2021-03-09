#include <stdio.h>
#include <math.h>

struct ResponseForSinusFunction
{
    unsigned short n;
    double answer;
};

double RemovePeriod(double);

struct ResponseForSinusFunction CountSinus(double, double);

int main(void)
{
    printf("Enter argument for counting sinus  and  precision (epsilon) :\n");
    double precision, argument;

    if (scanf("%lf", &argument) && scanf("%lf", &precision))
    {
        precision = fabs(precision);
        struct ResponseForSinusFunction response = CountSinus(argument, precision);
        printf("Result of Math.h: %lf\n", sin(argument));
        printf("Result of my function: %lf  (N = %hu)\n", response.answer, response.n);
    }
    else
    {
        printf("Incorrect input\n");
    }

    return 0;
}

double RemovePeriod(double query)
{
    return (query > 0 ? 1 : -1) * (fabs(query) - ((2 * M_PI) * trunc(fabs(query) / (2 * M_PI))));
}

struct ResponseForSinusFunction CountSinus(double arg, const double precision)
{
    double argument = RemovePeriod(arg);
    struct ResponseForSinusFunction response = {1, argument};
    const double exact_value = sin(argument),
            square_of_argument = argument * argument;
    unsigned long long factorial_in_denominator = 1;
    double degree_in_numerator = argument;
    char sign = 1;

    while (fabs(exact_value - response.answer) >= precision)
    {
        sign *= -1;
        response.n += 2;
        degree_in_numerator *= square_of_argument;
        factorial_in_denominator *= (response.n * (response.n - 1));
        response.answer += (degree_in_numerator / factorial_in_denominator * sign);
    }

    return response;
}