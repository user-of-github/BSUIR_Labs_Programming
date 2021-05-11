#ifndef LR7_Z6_2_V27_INTERPOL_CPP
#define LR7_Z6_2_V27_INTERPOL_CPP

#include "interpol.h"



////////////////////////////////////////////////////////



string LeftTrim(string s)
{
    s.erase(s.begin(), find_if(s.begin(), s.end(), [](unsigned char ch) {
        return !isspace(ch);
    }));

    return s;
}

string RightTrim(string s)
{
    s.erase(find_if(s.rbegin(), s.rend(), [](unsigned char ch) {
        return !isspace(ch);
    }).base(), s.end());

    return s;
}

string Trim(string s)
{
    s = LeftTrim(s);
    s = RightTrim(s);

    return s;
}


string CrimeTypeToString(const CrimeType &type)
{
    switch (type)
    {
        case CrimeType::BURGLARY:
            return "BURGLARY";
        case CrimeType::ROBBERY:
            return "ROBBERY";
        case CrimeType::THEFT:
            return "THEFT";
        case CrimeType::MURDER:
            return "MURDER";
        case CrimeType::DRUG_POSSESSION:
            return "DRUG_POSSESSION";
        default:
            return "";
    }
}

CrimeType StringToCrimeType(const string &type)
{
    string a = Trim(type);
    if (a == "BURGLARY")
        return CrimeType::BURGLARY;

    if (a == "ROBBERY")
        return CrimeType::ROBBERY;

    if (a == "THEFT")
        return CrimeType::THEFT;

    if (a == "MURDER")
        return CrimeType::MURDER;

    if (a == "DRUG_POSSESSION")
        return CrimeType::DRUG_POSSESSION;

    return CrimeType::BURGLARY;
}

string CriminalStatusToString(const CriminalStatus &status)
{
    switch (status)
    {
        case CriminalStatus::EX_CRIMINAL:
            return "EX_CRIMINAL";
        case CriminalStatus::ACTIVE_CRIMINAL:
            return "ACTIVE_CRIMINAL";
        case CriminalStatus::PRISONER_CRIMINAL:
            return "PRISONER_CRIMINAL";
        default:
            return "";
    }
}

CriminalStatus StringToCriminalStatus(const string &str)
{
    if (str == "PRISONER_CRIMINAL")
        return CriminalStatus::PRISONER_CRIMINAL;

    if (str == "ACTIVE_CRIMINAL")
        return CriminalStatus::ACTIVE_CRIMINAL;

    if (str == "EX_CRIMINAL")
        return CriminalStatus::EX_CRIMINAL;


    return CriminalStatus::PRISONER_CRIMINAL;
}


const string Crime::kDefaultPlace = "unknown";
set<string> Crime::all_ids_;


Crime::Crime(const string &place, const list<CriminalPerson *> &participants, const string &consequences,
             const string &comments) :
        place_(Trim(place)), participants_(participants), consequences_(Trim(consequences)),
        experts_comments_(Trim(comments))
{
    if (this->place_.empty())
        this->place_ = kDefaultPlace;

    this->id_ = GenerateId(kMaximumIdLength + rand() % (kMaximumIdLength - kMinimumIdLength));
    all_ids_.insert(id_);
}

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

bool Crime::CheckIfIdExists(const string &check) noexcept
{
    return (find(begin(Crime::all_ids_), end(Crime::all_ids_), check) != end(Crime::all_ids_));
}

string Crime::GenerateId(const size_t &length) noexcept
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
//////////////////////////////////////////////////////////////




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

//////////////////////////////////////////////////////////////



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

ostream &operator<<(ostream &os, const CriminalPerson &person)
{
    os << "[\n";
    os << "\tName: " << (!person.name_.empty() ? person.name_ : "UNKNOWN") << '\n';
    os << "\tSurname: " << (!person.surname_.empty() ? person.surname_ : "UNKNOWN") << '\n';
    os << "\tStatus: " << CriminalStatusToString(person.status_) << '\n';
    os << "]\n";

    return os;
}

void CriminalPerson::IncludeToCriminalOrganization(Organization *new_organization)
{
    this->organizations_.push_back(new_organization);
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

////////////////////////////////////////////////////////
////////////////////////////////////////////////////////



void DataBase::RemoveCriminal(CriminalPerson *to_remove)
{
    if (to_remove == nullptr ||
        find(begin(this->criminals_), end(this->criminals_), to_remove) == end(this->criminals_))
        return;

    this->criminals_ids_.erase(to_remove->Id());
    this->criminals_.remove(to_remove);
}

void DataBase::RemoveCrime(Crime *to_remove)
{
    if (to_remove == nullptr ||
        find(begin(this->crimes_), end(this->crimes_), to_remove) == end(this->crimes_))
        return;

    this->crimes_ids_.erase(to_remove->Id());
    this->crimes_.remove(to_remove);
}

void DataBase::RemoveOrganization(Organization *to_remove)
{
    if (to_remove == nullptr ||
        find(begin(this->organizations_), end(this->organizations_), to_remove) == end(this->organizations_))
        return;

    this->organizations_ids_.erase(to_remove->Id());
    this->organizations_.remove(to_remove);
}

bool DataBase::AddCriminal(CriminalPerson *to_add)
{
    if (criminals_ids_.count(to_add->Id()))
        return true;

    this->criminals_.push_back(to_add);
    this->criminals_ids_.insert(make_pair(to_add->Id(), to_add));
    return true;
}

bool DataBase::AddCrime(Crime *to_add)
{
    if (crimes_ids_.count(to_add->Id()))
        return true;

    this->crimes_.push_back(to_add);
    this->crimes_ids_.insert(make_pair(to_add->Id(), to_add));
    return true;
}

bool DataBase::AddOrganization(Organization *to_add)
{
    this->organizations_.push_back(to_add);
    this->organizations_ids_.insert(make_pair(to_add->Id(), to_add));
    return true;
}

CriminalPerson *DataBase::FindCriminalById(const string &id)
{
    return (this->criminals_ids_[id]);
}

Crime *DataBase::FindCrimeById(const string &id)
{
    return (this->crimes_ids_[id]);
}

Organization *DataBase::FindOrganizationById(const string &id)
{
    return (this->organizations_ids_[id]);
}

void DataBase::OpenReadFile()
{
    this->read_ = ifstream(this->url_.c_str());
}

void DataBase::CloseReadFile()
{
    this->read_.close();
}

void DataBase::OpenWriteFile()
{
    this->write_.open(this->url_, std::ios::out | std::ios::trunc);
}

void DataBase::CloseWriteFile()
{
    this->write_.close();
}

void DataBase::ReadOrganizations()
{
    size_t organizations_number;
    this->read_ >> organizations_number;

    string name, temp, id;
    size_t temp_number, rank;
    for (size_t counter = 0; counter < organizations_number; ++counter)
    {
        this->read_ >> name;
        this->read_ >> temp_number;
        auto temp_list = list<CrimeType>();
        for (size_t i = 0; i < temp_number; ++i)
        {
            this->read_ >> temp;
            temp_list.push_back(StringToCrimeType(temp));
        }
        this->read_ >> rank;
        this->read_ >> id;

        auto *j = new Organization(name, temp_list, rank, id);
        this->AddOrganization(j);
    }
}

void DataBase::ReadCriminals()
{
    size_t criminals_number;
    this->read_ >> criminals_number;

    string name, surname, status, id, temp;
    size_t temp_number, rank;
    for (size_t counter = 0; counter < criminals_number; ++counter)
    {
        this->read_ >> name;
        this->read_ >> surname;
        this->read_ >> status;
        this->read_ >> id;
        this->read_ >> temp_number;
        auto *j = new CriminalPerson(name, surname, id, StringToCriminalStatus(status));

        for (size_t i = 0; i < temp_number; ++i)
        {
            this->read_ >> temp;
            j->IncludeToCriminalOrganization(FindOrganizationById(temp));
        }
        this->AddCriminal(j);
    }
}

void DataBase::ReadCrimes()
{
    size_t crimes_number;

    string name, desc, desc2, temp, id;
    size_t temp_number;

    this->read_ >> crimes_number;

    for (size_t counter = 0; counter < crimes_number; ++counter)
    {
        this->read_ >> name;
        this->read_ >> id;
        this->read_ >> temp_number;
        list<CriminalPerson *> a;

        for (size_t i = 0; i < temp_number; ++i)
        {
            this->read_ >> temp;
            a.push_back(FindCriminalById(temp));
        }

        this->read_ >> desc >> desc2;

        auto *j = new Crime(name, id, a, desc, desc2);
        this->AddCrime(j);
    }
}

void DataBase::Start()
{
    this->OpenReadFile();
    this->ReadOrganizations();
    this->ReadCriminals();
    this->ReadCrimes();
}

void DataBase::Finish()
{
    this->CloseReadFile();
    this->OpenWriteFile();
    this->WriteOrganizations();
    this->WriteCriminals();
    this->WriteCrimes();
    this->CloseWriteFile();
    this->FreeMemory();
}

void DataBase::WriteOrganizations()
{
    this->write_ << this->organizations_.size() << '\n';
    for (const auto &org : this->organizations_)
    {
        this->write_ << org->Title() << ' ';
        this->write_ << org->CrimeTypes().size() << ' ';
        for (const auto &type : org->CrimeTypes())
            this->write_ << CrimeTypeToString(type) << ' ';

        this->write_ << org->Rating() << ' ';
        this->write_ << org->Id() << '\n';
    }
}

void DataBase::WriteCriminals()
{
    this->write_ << this->criminals_.size() << '\n';
    for (const auto &cr : this->criminals_)
    {
        this->write_ << cr->FullName() << ' ';
        this->write_ << CriminalStatusToString(cr->Status()) << ' ';
        this->write_ << cr->Id() << ' ';
        this->write_ << cr->Organizations().size() << ' ';
        for (const auto &org : cr->Organizations())
            this->write_ << org->Id() << ' ';
        this->write_ << '\n';
    }
}

void DataBase::WriteCrimes()
{
    this->write_ << this->crimes_.size() << '\n';
    for (const auto &cr : this->crimes_)
    {
        this->write_ << cr->Place() << ' ';
        this->write_ << cr->Id() << ' ';
        this->write_ << cr->Participants().size() << ' ';
        for (const auto &participant : cr->Participants())
            this->write_ << participant->Id() << ' ';

        this->write_ << cr->Consequences() << ' ' << cr->Comments() << '\n';
    }
}

void DataBase::FreeMemory()
{
    while (!this->organizations_.empty())
    {
        auto *copy = this->organizations_.front();
        this->organizations_.pop_front();
        delete copy;
    }

    while (!this->crimes_.empty())
    {
        auto *copy = this->crimes_.front();
        this->crimes_.pop_front();
        delete copy;
    }

    while (!this->criminals_.empty())
    {
        auto *copy = this->criminals_.front();
        this->criminals_.pop_front();
        delete copy;
    }
}


#endif //LR7_Z6_2_V27_INTERPOL_CPP
