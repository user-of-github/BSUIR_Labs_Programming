#ifndef LR7_Z6_2_V27_ORGANIZATION_H
#define LR7_Z6_2_V27_ORGANIZATION_H

#include <forward_list>
#include "utilities.h"

using std::forward_list;
using std::string;
using std::find;
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

    friend ostream &operator<<(ostream &, const Organization &);

private:
    string title_;
    unsigned short rating_;
protected:
    forward_list<CrimeType> actions_type_;
};


bool Organization::IsSuitableRating(const unsigned short &rating) const
{
    return (rating <= kMaximumPossibleRating && rating >= kMinimumPossibleRating);
}

Organization::Organization(const string &title, const forward_list<CrimeType> &action_type,
                           const unsigned short &rating) :
        title_(title), actions_type_(action_type), rating_(rating)
{}

void Organization::ChangeTitle(string title)
{
    Trim(title);

    if (!title.empty())
        this->title_ = title;
}

void Organization::AddActionsType(const CrimeType &action_type)
{
    this->actions_type_.push_front(action_type);
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
    for (const auto item : organization.actions_type_)
        os << CrimeTypeToString(item) << " ; ";
    os << "]\n";
    os << "Rating: ";
    for (unsigned short counter = 0; counter < organization.rating_; ++counter)
        os << "★";
    os << "\n";

    return os;
}


#endif //LR7_Z6_2_V27_ORGANIZATION_H
