#include "crime.h"

const string Crime::kDefaultPlace = "unknown";
set<string> Crime::all_ids_;


Crime::Crime(const string &place, const string &id, const list<CriminalPerson *> &participants,
             const string &consequences,
             const string &comments) :
        place_(Trim(place)), participants_(participants), consequences_(Trim(consequences)),
        experts_comments_(Trim(comments)), id_(id)
{
    all_ids_.insert((id));
}

bool Crime::AddParticipant(CriminalPerson *new_person)
{
    if (all_ids_.count(new_person->Id()))
        return true;
    this->participants_.push_front(new_person);
    return true;
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