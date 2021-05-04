#ifndef LR7_Z6_2_V27_ORGANIZATION_H
#define LR7_Z6_2_V27_ORGANIZATION_H

#pragma once

#include <forward_list>
#include <algorithm>
#include "utilities.h"

using std::forward_list;
using std::string;
using std::find_if;
using std::begin;
using std::end;
using std::ostream;

// название, род деятельности, рейтинг опасности


class Organization
{
public:
    static const unsigned short kMinimumPossibleRating = 1;
    static const unsigned short kMaximumPossibleRating = 10;
    static const unsigned short kDefaultRating = 10;

    bool IsSuitableRating(const unsigned short &) const;

    Organization(const string &, const forward_list<CrimeType> &, const unsigned short &);

    void ChangeTitle(string);

    void AddActionsType(const CrimeType &);

    void UpdateRating(const unsigned short &);

    string Title() const;

    unsigned short Rating() const;

    forward_list<CrimeType> CrimeTypes() const;

    friend ostream &operator<<(ostream &, const Organization &);

private:
    string title_;
    unsigned short rating_;
protected:
    forward_list<CrimeType> action_types_;
};


bool Organization::IsSuitableRating(const unsigned short &rating) const
{
    return (rating <= kMaximumPossibleRating && rating >= kMinimumPossibleRating);
}

Organization::Organization(const string &title, const forward_list<CrimeType> &action_types,
                           const unsigned short &rating) :
        title_(title), action_types_(action_types), rating_(rating)
{}

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
        this->action_types_.push_front(action_type);
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

string Organization::Title() const
{
    return this->title_;
}

unsigned short Organization::Rating() const
{
    return this->rating_;
}

forward_list<CrimeType> Organization::CrimeTypes() const
{
    return this->action_types_;
}


#endif //LR7_Z6_2_V27_ORGANIZATION_H
