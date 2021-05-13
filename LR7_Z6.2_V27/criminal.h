#ifndef LR7_Z6_2_V27_CRIMINAL_H
#define LR7_Z6_2_V27_CRIMINAL_H


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

    CriminalPerson(const string &, const string &, const string &,
                   const CriminalStatus & = CriminalStatus::ACTIVE_CRIMINAL);

    bool IncludeToCriminalOrganization(Organization *);

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



#endif //LR7_Z6_2_V27_CRIMINAL_H
