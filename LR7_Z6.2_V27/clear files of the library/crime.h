#ifndef LR7_Z6_2_V27_CRIME_H
#define LR7_Z6_2_V27_CRIME_H

#pragma once

#include <iostream>
#include <list>
#include <set>
#include "criminal.h"
#include "utilities.h"

using std::string;
using std::list;
using std::set;

class CriminalPerson;

class Crime
{
public:
    Crime(const string &, const list<CriminalPerson *> &, const string &, const string &);
    Crime(const string &, const string &, const list<CriminalPerson *> &, const string &, const string &);

    void AddParticipant(CriminalPerson *);

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


const string Crime::kDefaultPlace = "unknown";
set<string> Crime::all_ids_;


Crime::Crime(const string &place, const list<CriminalPerson *> &participants, const string &consequences,
             const string &comments) :
        place_(Trim(place)), participants_(participants), consequences_(Trim(consequences)),
        experts_comments_(Trim(comments))
{
    if (this->place_.empty())
        this->place_ = kDefaultPlace;

    this->id_ = GenerateId(kMaximumIdLength + rand() % (kMaximumIdLength - kMinimumIdLength));
    all_ids_.insert(id_);
}

Crime::Crime(const string &place, const string &id, const list<CriminalPerson *> &participants, const string &consequences,
             const string &comments) :
        place_(Trim(place)), participants_(participants), consequences_(Trim(consequences)),
        experts_comments_(Trim(comments)), id_(id)
{
    all_ids_.insert((id));
}

bool Crime::AddParticipant(CriminalPerson *new_person)
{
    this->participants_.push_front(new_person);
    return true;
}

bool Crime::CheckIfIdExists(const string &check) noexcept
{
    return (find(begin(Crime::all_ids_), end(Crime::all_ids_), check) != end(Crime::all_ids_));
}

string Crime::GenerateId(const size_t &length) noexcept
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

string Crime::Id() const noexcept
{
    return this->id_;
}

string Crime::Place() const noexcept
{
    return this->place_;
}

list<CriminalPerson *> Crime::Participants() const noexcept
{
    return this->participants_;
}

string Crime::Comments() const noexcept
{
    return this->experts_comments_;
}
string Crime::Consequences() const noexcept
{
    return this->consequences_;
}

#endif //LR7_Z6_2_V27_CRIME_H
