#ifndef LR7_Z6_2_V27_CRIME_H
#define LR7_Z6_2_V27_CRIME_H

#include <iostream>
#include <list>
#include <set>
#include "criminal.h"
#include "utilities.h"

using namespace std;

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


#endif //LR7_Z6_2_V27_CRIME_H
