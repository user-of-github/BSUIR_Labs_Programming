#include "organization.h"


set<string> Organization::all_ids_;


constexpr bool Organization::IsSuitableRating(const unsigned short &rating)
{
    return (rating <= kMaximumPossibleRating && rating >= kMinimumPossibleRating);
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

string Organization::Id() const noexcept
{
    return this->id_;
}