#ifndef LR7_Z6_2_V27_INTERPOL_H
#define LR7_Z6_2_V27_INTERPOL_H

#include <iostream>
#include <list>
#include <algorithm>
#include <map>
#include <fstream>
#include <set>
#include <ctime>
#include "crime.h"
#include "criminal.h"
#include "utilities.h"
#include "organization.h"

using namespace std;

class DataBase
{
public:
    const CriminalPerson emptyPerson = CriminalPerson("", " ");
    const Crime emptyCrime = Crime("", list<CriminalPerson *>(), "", "");
    const Organization emptyOrganization = Organization("", list<CrimeType>(), 0);

    void RemoveCriminal(CriminalPerson *);

    void RemoveCrime(Crime *);

    void RemoveOrganization(Organization *);

    bool AddCriminal(CriminalPerson *);

    bool AddCrime(Crime *);

    bool AddOrganization(Organization *);

    CriminalPerson *FindCriminalById(const string &);

    Crime *FindCrimeById(const string &);

    Organization *FindOrganizationById(const string &);

    void Start();

    void Finish();

private:
    list<CriminalPerson *> criminals_;
    list<Crime *> crimes_;
    list<Organization *> organizations_;

    map<string, CriminalPerson *> criminals_ids_;
    map<string, Crime *> crimes_ids_;
    map<string, Organization *> organizations_ids_;

    const string url_ = "database.txt";

    ifstream read_;
    ofstream write_;

    void OpenReadFile();

    void CloseReadFile();

    void OpenWriteFile();

    void CloseWriteFile();

    void ReadCrimes();

    void ReadCriminals();

    void ReadOrganizations();

    void WriteOrganizations();

    void WriteCriminals();

    void WriteCrimes();

    void FreeMemory();
};


#endif //LR7_Z6_2_V27_INTERPOL_H
