#include "criminal.h"


set<string> CriminalPerson::all_ids_;


CriminalPerson::CriminalPerson(const string &name, const string &surname,
                               const CriminalStatus &status) : name_(Trim(name)), surname_(Trim(surname)),
                                                               status_(status)
{

    srand(time(NULL));

    this->id_ = GenerateId(kMaximumIdLength + rand() % (kMaximumIdLength - kMinimumIdLength));
    all_ids_.insert(id_);
}

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