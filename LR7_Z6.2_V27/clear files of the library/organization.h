#ifndef LR7_Z6_2_V27_ORGANIZATION_H
#define LR7_Z6_2_V27_ORGANIZATION_H

#pragma once

#include <list>
#include <algorithm>
#include <set>
#include <ctime>
#include "utilities.h"

using std::list;
using std::string;
using std::find_if;
using std::begin;
using std::end;
using std::ostream;
using std::set;
using std::time;

// название, род деятельности, рейтинг опасности


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

    void ChangeTitle(string);

    void AddActionsType(const CrimeType &);

    void UpdateRating(const unsigned short &);

    string Title() const noexcept;

    string Id() const noexcept;

    unsigned short Rating() const;

    list<CrimeType> CrimeTypes() const;

    friend ostream &operator<<(ostream &, const Organization &);

    void SetId(const string &id)
    {
        if (!all_ids_.contains(id))
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


set<string> Organization::all_ids_;


constexpr bool Organization::IsSuitableRating(const unsigned short &rating)
{
    return (rating <= kMaximumPossibleRating && rating >= kMinimumPossibleRating);
}

Organization::Organization(const string &title, const list<CrimeType> &action_types,
                           const unsigned short &rating) :
        title_(title), action_types_(action_types), rating_(rating)
{
    this->id_ = GenerateId(kMaximumIdLength + rand() % (kMaximumIdLength - kMinimumIdLength));
    all_ids_.insert(id_);
}

Organization::Organization(const string &title, const list<CrimeType> &action_types,
                           const unsigned short &rating, const string &id) :
        title_(title), action_types_(action_types), rating_(rating)
{
    this->id_ = id;
    all_ids_.insert(id);
}

void Organization::ChangeTitle(string title)
{
    title = Trim(title);

    if (!title.empty())
        this->title_ = title;
}

void Organization::AddActionsType(const CrimeType &action_type)
{
    if (find_if(begin(this->action_types_), end(this->action_types_),
                [&](const auto &type) { return type == action_type; }) !=
        end(this->action_types_))
        this->action_types_.push_back(action_type);
}

void Organization::UpdateRating(const unsigned short &rating)
{
    if (this->IsSuitableRating(rating))
        this->rating_ = rating;
}

ostream &operator<<(ostream &os, const Organization &organization)
{
    os << "Title: " << organization.title_ << "\n";
    os << "Types of crimes: [ ";
    for (const auto item : organization.action_types_)
        os << CrimeTypeToString(item) << " ; ";
    os << "]\n";
    os << "Rating: ";
    for (unsigned short counter = 0; counter < organization.rating_; ++counter)
        os << "★";
    os << "\n";

    return os;
}

string Organization::Title() const noexcept
{
    return this->title_;
}

unsigned short Organization::Rating() const
{
    return this->rating_;
}

list<CrimeType> Organization::CrimeTypes() const
{
    return this->action_types_;
}


bool Organization::CheckIfIdExists(const string &check) noexcept
{
    return (find(begin(Organization::all_ids_), end(Organization::all_ids_), check) != end(Organization::all_ids_));
}

string Organization::GenerateId(const size_t &length) noexcept
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

string Organization::Id() const noexcept
{
    return this->id_;
}



#endif //LR7_Z6_2_V27_ORGANIZATION_H
