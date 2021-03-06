#ifndef LR7_Z6_2_V27_ORGANIZATION_H
#define LR7_Z6_2_V27_ORGANIZATION_H


#include <list>
#include <algorithm>
#include <set>
#include <ctime>
#include <iostream>
#include "utilities.h"

using namespace std;

class Organization
{
public:
    static const unsigned short kMinimumPossibleRating = 1,
            kMaximumPossibleRating = 10;

    constexpr static bool IsSuitableRating(const unsigned short &);

    Organization(const string &, const list<CrimeType> &, const unsigned short &, const string &);

    bool ChangeTitle(string);

    bool AddActionsType(const CrimeType &);

    bool UpdateRating(const unsigned short &);

    string Title() const noexcept;

    string Id() const noexcept;

    unsigned short Rating() const;

    list<CrimeType> CrimeTypes() const;

    bool SetId(const string &id)
    {
        if (!all_ids_.count(id))
        {
            this->id_ = id;
            all_ids_.insert(id);
        }

        return true;
    }

    bool AddIdToAll(const string &id)
    {
        all_ids_.insert(id);

        return true;
    }

private:
    static set<string> all_ids_;
    string title_;
    unsigned short rating_;
    string id_;
    list<CrimeType> action_types_;
};





#endif //LR7_Z6_2_V27_ORGANIZATION_H
