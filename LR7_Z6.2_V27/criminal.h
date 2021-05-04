#ifndef LR7_Z6_2_V27_CRIMINAL_H
#define LR7_Z6_2_V27_CRIMINAL_H

#pragma once

#include <forward_list>
#include <algorithm>

#include "crime.h"
#include "organization.h"
#include "utilities.h"

using std::string;
using std::forward_list;
using std::ostream;
using std::to_string;
using std::find_if;
using std::begin;
using std::end;


class Crime;


class CriminalPerson
{
public:
    CriminalPerson(const string &, const string &, const string &, const string &, const unsigned short &,
                   const unsigned short &, const string &, const string &, const string &, const string &,
                   const forward_list<string> &, const CriminalStatus & = CriminalStatus::ACTIVE_CRIMINAL);

    void IncludeToCriminalOrganization(Organization *);

    friend ostream &operator<<(ostream &, const CriminalPerson &);

    forward_list<Organization *> GetOrganizationsList() const;

    string Name() const;

    string Status() const;


private:
    static const unsigned short kMinimumPossibleWeight = 10,
            kMaximumPossibleWeight = 400,
            kDefaultWeight = 0,
            kMinimumPossibleHeight = 100,
            kMaximumPossibleHeight = 300,
            kDefaultHeight = 0;
    string name_,
            surname_,
            patronymic_;
    string nickname_;
    unsigned short height_; // SM
    unsigned short weight_; // KG
    string hair_color_;
    string special_signs_;
    string citizenship_;
    forward_list<string> languages_;
    string criminal_type_;
    forward_list<Organization *> organizations_;
    forward_list<Crime *> crimes_;
    CriminalStatus status_;

    static bool IsSuitableWeight(const unsigned short &);

    static bool IsSuitableHeight(const unsigned short &);
};

CriminalPerson::CriminalPerson(const string &name, const string &surname, const string &patronymic,
                               const string &nickname, const unsigned short &weight, const unsigned short &height,
                               const string &hair_color, const string &special_signs, const string &citizenship,
                               const string &criminal_type, const forward_list<string> &languages_list,
                               const CriminalStatus &status) : name_(Trim(name)), surname_(Trim(surname)),
                                                               patronymic_(Trim(patronymic)), nickname_(Trim(nickname)),
                                                               weight_(weight), height_(height),
                                                               hair_color_(Trim(hair_color)),
                                                               special_signs_(Trim(special_signs)),
                                                               citizenship_(Trim(citizenship)),
                                                               criminal_type_(Trim(criminal_type)), status_(status),
                                                               languages_(languages_list)
{
    if (!CriminalPerson::IsSuitableWeight(this->weight_))
        this->weight_ = kDefaultWeight;

    if (CriminalPerson::IsSuitableHeight(this->height_))
        this->height_ = kDefaultHeight;
}

bool CriminalPerson::IsSuitableWeight(const unsigned short &weight)
{
    return (weight >= kMinimumPossibleWeight && weight <= kMaximumPossibleWeight);
}

bool CriminalPerson::IsSuitableHeight(const unsigned short &height)
{
    return (height >= kMinimumPossibleHeight && height <= kMaximumPossibleHeight);
}

ostream &operator<<(ostream &os, const CriminalPerson &person)
{
    os << "[\n";
    os << "\tName: " << (!person.name_.empty() ? person.name_ : "UNKNOWN") << '\n';
    os << "\tSurname: " << (!person.surname_.empty() ? person.surname_ : "UNKNOWN") << '\n';
    os << "\tPatronymic: " << (!person.patronymic_.empty() ? person.patronymic_ : "UNKNOWN") << '\n';
    os << "\tNickName: " << (!person.nickname_.empty() ? person.nickname_ : "UNKNOWN") << '\n';
    os << "\tWeight: " << (person.weight_ != CriminalPerson::kDefaultWeight ? to_string(person.weight_) : "UNKNOWN")
       << '\n';
    os << "\tHeight: " << (person.height_ != CriminalPerson::kDefaultHeight ? to_string(person.height_) : "UNKNOWN")
       << '\n';
    os << "\tHair color: " << person.hair_color_ << '\n';
    os << "\tStatus: " << CriminalStatusToString(person.status_) << '\n';
    os << "]\n";

    return os;
}

void CriminalPerson::IncludeToCriminalOrganization(Organization *new_organization)
{
    if (find_if(begin(this->organizations_), end(this->organizations_),
                [&](const auto &organization) { return organization == new_organization; }) !=
        end(this->organizations_))
        this->organizations_.push_front(new_organization);
}

forward_list<Organization *> CriminalPerson::GetOrganizationsList() const
{
    return this->organizations_;
}


#endif //LR7_Z6_2_V27_CRIMINAL_H
