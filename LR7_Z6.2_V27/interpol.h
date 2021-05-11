#ifndef LR7_Z6_2_V27_INTERPOL_H
#define LR7_Z6_2_V27_INTERPOL_H

#include <iostream>
#include <list>
#include <algorithm>
#include <map>
#include <fstream>
#include <set>
#include <ctime>

using namespace std;


enum class CrimeType
{
    DRUG_POSSESSION,
    ROBBERY,
    THEFT,
    BURGLARY,
    MURDER
};

enum class CriminalStatus
{
    ACTIVE_CRIMINAL,
    EX_CRIMINAL,
    PRISONER_CRIMINAL
};


string LeftTrim(string s);

string RightTrim(string s);

string Trim(string s);

string CrimeTypeToString(const CrimeType &type);

CrimeType StringToCrimeType(const string &type);

string CriminalStatusToString(const CriminalStatus &status);

CriminalStatus StringToCriminalStatus(const string &str);


class CriminalPerson;

class Crime
{
public:
    Crime(const string &, const list<CriminalPerson *> &, const string &, const string &);

    Crime(const string &, const string &, const list<CriminalPerson *> &, const string &, const string &);

    bool AddParticipant(CriminalPerson *);

    string Id() const noexcept;

    string Place() const noexcept;

    list<CriminalPerson *> Participants() const noexcept;

    string Consequences() const noexcept;

    string Comments() const noexcept;

private:
    static const unsigned short kMinimumIdLength = 5,
            kMaximumIdLength = 20;
    static set<string> all_ids_;
    static const string kDefaultPlace;
    string place_;
    list<CriminalPerson *> participants_;
    string consequences_;
    string experts_comments_;
    string id_;

    static string GenerateId(const size_t &length) noexcept;

    static bool CheckIfIdExists(const string &check) noexcept;
};


class Organization
{
public:
    static const unsigned short kMinimumPossibleRating = 1,
            kMaximumPossibleRating = 10;
    static const unsigned short kDefaultRating = 0;

    static const unsigned short kMinimumIdLength = 5,
            kMaximumIdLength = 20;

    constexpr static bool IsSuitableRating(const unsigned short &);

    Organization(const string &, const list<CrimeType> &, const unsigned short &);

    Organization(const string &, const list<CrimeType> &, const unsigned short &, const string &);

    bool ChangeTitle(string);

    bool AddActionsType(const CrimeType &);

    bool UpdateRating(const unsigned short &);

    string Title() const noexcept;

    string Id() const noexcept;

    unsigned short Rating() const;

    list<CrimeType> CrimeTypes() const;

    friend ostream &operator<<(ostream &, const Organization &);

    void SetId(const string &id)
    {
        if (!all_ids_.count(id))
        {
            this->id_ = id;
            all_ids_.insert(id);
        }
    }

    void AddIdToAll(const string &id)
    {
        all_ids_.insert(id);
    }

private:
    static set<string> all_ids_;
    string title_;
    unsigned short rating_;
    string id_;
    list<CrimeType> action_types_;

    static bool CheckIfIdExists(const string &) noexcept;

    static string GenerateId(const size_t &) noexcept;

};


class CriminalPerson
{
public:
    CriminalPerson(const string &, const string &, const CriminalStatus & = CriminalStatus::ACTIVE_CRIMINAL);

    CriminalPerson(const string &, const string &, const string &,
                   const CriminalStatus & = CriminalStatus::ACTIVE_CRIMINAL);

    void IncludeToCriminalOrganization(Organization *);

    friend ostream &operator<<(ostream &, const CriminalPerson &);

    string FullName() const;

    list<Organization *> &Organizations();

    string Id() const noexcept;

    CriminalStatus Status() const noexcept;

private:

    static set<string> all_ids_;

    static const unsigned short
            kMinimumIdLength = 5,
            kMaximumIdLength = 20;

    string name_,
            surname_;
    string id_;

    list<Organization *> organizations_;
    CriminalStatus status_;

    static bool CheckIfIdExists(const string &) noexcept;

    static string GenerateId(const size_t &) noexcept;
};


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
