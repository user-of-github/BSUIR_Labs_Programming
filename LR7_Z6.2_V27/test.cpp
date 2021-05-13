#include "interpol.h"
#include <cassert>
#include "utilities.h"

using std::cout;

int main()
{
    auto db = DataBase();

    db.Start();

    db.AddCriminal(new CriminalPerson("Kek", "Surname", "tijieverahuthguhtugandisrhfnikita",
                                      CriminalStatus::PRISONER_CRIMINAL));

    assert(db.FindOrganizationById("srkfh8545")->Title() == "Mafia");
    assert(db.FindCriminalById("24878dj")->FullName() == "Pablo Escobar");
    assert(db.FindCriminalById("24878dj")->Status() == CriminalStatus::EX_CRIMINAL);
    assert(CriminalStatusToString(db.FindCriminalById("24878dj")->Status()) == "EX_CRIMINAL");
    assert(db.FindOrganizationById("srkfh8545")->Rating() == 7);
    assert(db.FindCrimeById("228113337")->Place() == "somePlace");
    assert(db.FindCrimeById("228113337")->Id() == "228113337");
    assert(db.FindCrimeById("228113337")->Comments() == "TheLargestBurglaryEver");
    assert(db.FindCrimeById("228113337")->Consequences() == "1000$_stolen");
    assert(db.FindCrimeById("228113337")->Participants().front()->FullName() == "Pablo Escobar");
    assert(db.AddCrime(
            new Crime("Hello", "rfufhverarfjikita", list<CriminalPerson *>({db.FindCriminalById("24878dj")}),
                      "1$_stolen",
                      "Very_very_bad")) == true);

    assert(Trim(" ghetugh ") == "ghetugh");
    assert(LeftTrim("   ghetugh   ") == "ghetugh   ");
    assert(RightTrim("  ghetugh   ") == "  ghetugh");


    assert(db.FindOrganizationById("srkfh8545")->UpdateRating(7) == true);
    assert(db.FindOrganizationById("srkfh8545")->ChangeTitle("Mafia") == true);
    assert(db.FindOrganizationById("srkfh8545")->Id() == "srkfh8545");
    assert(db.FindOrganizationById("srkfh8545")->AddActionsType(CrimeType::THEFT) == true);

    db.Finish();

    return 0;
}