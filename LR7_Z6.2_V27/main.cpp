#include <iostream>
#include "crime.h"
#include "organization.h"
#include "criminal.h"

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
//    cout << italianMafia;
////    Title: Italian Mafia
////    Types of crimes: [ Drug possession ; Murder ; ]
////    Rating: ★★★★★

    auto escobar = CriminalPerson("Pablo", "Escobar ", " Emilio ", "the king of cocaine", 0, 0, "black", "", "Columbia",
                                  "Drug-dealer", forward_list<string>({"rus", "eng"}), CriminalStatus::EX_CRIMINAL);
//  cout << escobar;
//  [
//        Name: Pablo
//        Surname: Escobar
//        Patronymic: Emilio
//        NickName: the king of cocaine
//        Weight: UNKNOWN
//        Height: UNKNOWN
//        Hair color: black
//        Status: Ex-criminal
//  ]
//
//

    escobar.IncludeToCriminalOrganization(&yakutza);
    escobar.IncludeToCriminalOrganization(&italianMafia);

    auto organizationsOfEscobar = escobar.GetOrganizationsList();


    return 0;
}
