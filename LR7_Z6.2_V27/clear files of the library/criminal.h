#ifndef LR7_Z6_2_V27_CRIMINAL_H
#define LR7_Z6_2_V27_CRIMINAL_H

#pragma once

#include <list>
#include <algorithm>

#include "crime.h"
#include "organization.h"
#include "utilities.h"
#include <set>
#include <ctime>

using std::string;
using std::list;
using std::ostream;
using std::to_string;
using std::find_if;
using std::begin;
using std::end;
using std::set;
using std::time;

class Crime;

class CriminalPerson
{
public:
    CriminalPerson(const string &, const string &, const CriminalStatus & = CriminalStatus::ACTIVE_CRIMINAL);

    CriminalPerson(const string &, const string &, const string &, const CriminalStatus & = CriminalStatus::ACTIVE_CRIMINAL);

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


set<string> CriminalPerson::all_ids_;


CriminalPerson::CriminalPerson(const string &name, const string &surname,
                               const CriminalStatus &status) : name_(Trim(name)), surname_(Trim(surname)),
                                                               status_(status)
{

    srand(time(NULL));

    this->id_ = GenerateId(kMaximumIdLength + rand() % (kMaximumIdLength - kMinimumIdLength));
    all_ids_.insert(id_);
}

CriminalPerson::CriminalPerson(const string &name, const string &surname, const string &id, const CriminalStatus &status): name_(Trim(name)), surname_(Trim(surname)),
                                                                                                        status_(status), id_(id)
{
    all_ids_.insert(id);
}

ostream &operator<<(ostream &os, const CriminalPerson &person)
{
    os << "[\n";
    os << "\tName: " << (!person.name_.empty() ? person.name_ : "UNKNOWN") << '\n';
    os << "\tSurname: " << (!person.surname_.empty() ? person.surname_ : "UNKNOWN") << '\n';
    os << "\tStatus: " << CriminalStatusToString(person.status_) << '\n';
    os << "]\n";

    return os;
}

void CriminalPerson::IncludeToCriminalOrganization(Organization *new_organization)
{
    this->organizations_.push_back(new_organization);
}

string CriminalPerson::FullName() const
{
    return this->name_  + " " + this->surname_;
}


list<Organization *> &CriminalPerson::Organizations()
{
    return this->organizations_;
}

bool CriminalPerson::CheckIfIdExists(const string &check) noexcept
{
    return (find(begin(CriminalPerson::all_ids_), end(CriminalPerson::all_ids_), check) !=
            end(CriminalPerson::all_ids_));
}

string CriminalPerson::GenerateId(const size_t &length) noexcept
{
    static const string kSymbols = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz1234567890";
    static const size_t kSymbolsNumber = kSymbols.size();

    string response;

    srand(time(NULL));

    for (size_t counter = 0; counter < length; ++counter)
        response += kSymbols[rand() % kSymbolsNumber];

    while (CheckIfIdExists(response))
    {
        response = "";

        for (size_t counter = 0; counter < length; ++counter)
            response += kSymbols[rand() % kSymbolsNumber];
    }

    return response;
}

string CriminalPerson::Id() const noexcept
{
    return this->id_;
}

CriminalStatus CriminalPerson::Status() const noexcept
{
    return this->status_;
}

#endif //LR7_Z6_2_V27_CRIMINAL_H
