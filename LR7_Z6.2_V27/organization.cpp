#include "organization.h"


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

bool Organization::ChangeTitle(string title)
{
    title = Trim(title);

    if (!title.empty())
        this->title_ = title;

    return true;
}

bool Organization::AddActionsType(const CrimeType &action_type)
{
    if (find_if(begin(this->action_types_), end(this->action_types_),
                [&](const auto &type) { return type == action_type; }) !=
        end(this->action_types_))
        this->action_types_.push_back(action_type);

    return true;
}

bool Organization::UpdateRating(const unsigned short &rating)
{
    if (this->IsSuitableRating(rating))
        this->rating_ = rating;

    return true;
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