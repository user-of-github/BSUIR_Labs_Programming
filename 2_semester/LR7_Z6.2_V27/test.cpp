#include "interpol.h"
#include <cassert>
#include "utilities.h"

using std::cout;

void TestFinding1(DataBase &);

void TestUtilities();

void TestAdding1(DataBase &);

void TestComplex1(DataBase &);

void TestDeleting(DataBase &);

void TestAdding2(DataBase &);

void TestComplex2(DataBase &);

int main(void)
{
    auto db = DataBase();

    assert(db.Start() == true);

    TestFinding1(db);
    TestUtilities();
    TestAdding1(db);
    TestComplex1(db);
    TestDeleting(db);
    TestAdding2(db);
    TestComplex2(db);

    assert(db.Finish() == true);

    return 0;
}

void TestFinding1(DataBase &db)
{
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
}

void TestUtilities()
{
    assert(Trim(" ghetugh ") == "ghetugh");
    assert(LeftTrim("   ghetugh   ") == "ghetugh   ");
    assert(RightTrim("  ghetugh   ") == "  ghetugh");

    assert(StringToCriminalStatus(Trim("EX_CRIMINAL ")) == CriminalStatus::EX_CRIMINAL);
    assert(StringToCriminalStatus(Trim("       ACTIVE_CRIMINAL ")) == CriminalStatus::ACTIVE_CRIMINAL);
    assert(StringToCriminalStatus(Trim("PRISONER_CRIMINAL ")) == CriminalStatus::PRISONER_CRIMINAL);

    assert(CriminalStatusToString(CriminalStatus::EX_CRIMINAL) == "EX_CRIMINAL");
    assert(CriminalStatusToString(CriminalStatus::PRISONER_CRIMINAL) == "PRISONER_CRIMINAL");
    assert(CriminalStatusToString(CriminalStatus::ACTIVE_CRIMINAL) == "ACTIVE_CRIMINAL");

    assert(CrimeTypeToString(CrimeType::THEFT) == "THEFT");
    assert(CrimeTypeToString(CrimeType::BURGLARY) == "BURGLARY");
    assert(CrimeTypeToString(CrimeType::DRUG_POSSESSION) == "DRUG_POSSESSION");
    assert(CrimeTypeToString(CrimeType::MURDER) == "MURDER");
    assert(CrimeTypeToString(CrimeType::ROBBERY) == "ROBBERY");


    assert(StringToCrimeType(LeftTrim("  MURDER")) == CrimeType::MURDER);
    assert(StringToCrimeType(LeftTrim("  THEFT")) == CrimeType::THEFT);
    assert(StringToCrimeType(LeftTrim("  DRUG_POSSESSION")) == CrimeType::DRUG_POSSESSION);
    assert(StringToCrimeType(LeftTrim("  BURGLARY")) == CrimeType::BURGLARY);
    assert(StringToCrimeType(LeftTrim("  ROBBERY")) == CrimeType::ROBBERY);
    assert(StringToCrimeType(LeftTrim("")) == CrimeType::BURGLARY);
}

void TestAdding1(DataBase &db)
{
    db.AddCriminal(new CriminalPerson("Kek", "Surname", "tijieverahuthguhtugandisrhfnikita",
                                      CriminalStatus::PRISONER_CRIMINAL));


    assert(db.AddCrime(
            new Crime("Hello", "rfufhverarfjikita", list<CriminalPerson *>({db.FindCriminalById("24878dj")}),
                      "1$_stolen",
                      "Very_very_bad")) == true);
}

void TestComplex1(DataBase &db)
{
    assert(db.FindOrganizationById("srkfh8545")->UpdateRating(7) == true);
    assert(db.FindOrganizationById("srkfh8545")->ChangeTitle("Mafia") == true);
    assert(db.FindOrganizationById("srkfh8545")->Id() == "srkfh8545");
    assert(db.FindOrganizationById("srkfh8545")->AddActionsType(CrimeType::THEFT) == true);
    assert(db.FindCrimeById("228113337")->AddParticipant(db.FindCriminalById("24878dj")) == true);
}

void TestDeleting(DataBase &db)
{
    assert(db.RemoveCrime(db.FindCrimeById("228113337")) == true);
    assert(db.RemoveCriminal(db.FindCriminalById("24878dj")) == true);
    assert(db.RemoveOrganization(db.FindOrganizationById("srkfh8545")) == true);
}

void TestAdding2(DataBase &db)
{
    assert(db.AddCrime(
            new Crime("somePlace", "228113337", list<CriminalPerson *>(), "1000$_stolen", "TheLargestBurglaryEver")) ==
           true);
    assert(db.AddCriminal(new CriminalPerson("Pablo", "Escobar", "24878dj", CriminalStatus::EX_CRIMINAL)) == true);
    assert(db.AddOrganization(
            new Organization("Mafia", list<CrimeType>({CrimeType::DRUG_POSSESSION, CrimeType::MURDER}), 7,
                             "srkfh8545")));
}

void TestComplex2(DataBase &db)
{
    assert(db.FindCriminalById("24878dj")->IncludeToCriminalOrganization(db.FindOrganizationById("srkfh8545")) == true);
    assert(db.FindCriminalById("24878dj")->IncludeToCriminalOrganization(db.FindOrganizationById("dhu2021")) == true);
    assert(db.FindCrimeById("228113337")->AddParticipant(db.FindCriminalById("24878dj")) == true);
    assert(db.AddOrganization(new Organization("testOrg", list<CrimeType>({CrimeType::BURGLARY}), 2, "VeraNikita")) ==
           true);
    assert(db.FindOrganizationById("VeraNikita")->SetId("NikitaVera") == true);
}