#include <iostream>
#include "crime.h"
#include "organization.h"
#include "criminal.h"
#include "utilities.h"

#include <windows.h>

using std::cout;

int main()
{
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);

    auto italianMafia = Organization("Italian Mafia",
                                     forward_list<CrimeType>({CrimeType::DRUG_POSSESSION, CrimeType::MURDER}),
                                     5);
    auto yakutza = Organization("Japanese Yakutza",
                                     forward_list<CrimeType>({CrimeType::MURDER, CrimeType::ROBBERY}),
                                     7);
    cout << italianMafia;
    cout << "-------\n";
    cout << yakutza;
    return 0;
}
