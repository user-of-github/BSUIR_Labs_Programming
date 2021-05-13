#include "criminal.h"


set<string> CriminalPerson::all_ids_;


CriminalPerson::CriminalPerson(const string &name, const string &surname, const string &id,
                               const CriminalStatus &status) : name_(Trim(name)), surname_(Trim(surname)),
                                                               status_(status), id_(id)
{
    all_ids_.insert(id);
}


bool CriminalPerson::IncludeToCriminalOrganization(Organization *new_organization)
{
    this->organizations_.push_back(new_organization);
    return true;
}

string CriminalPerson::FullName() const
{
    return this->name_ + " " + this->surname_;
}


list<Organization *> &CriminalPerson::Organizations()
{
    return this->organizations_;
}

string CriminalPerson::Id() const noexcept
{
    return this->id_;
}

CriminalStatus CriminalPerson::Status() const noexcept
{
    return this->status_;
}