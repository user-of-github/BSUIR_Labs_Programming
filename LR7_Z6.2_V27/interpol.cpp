#include "interpol.h"

bool DataBase::RemoveCriminal(CriminalPerson *to_remove)
{
    if (to_remove == nullptr ||
        find(begin(this->criminals_), end(this->criminals_), to_remove) == end(this->criminals_))
        return true;

    this->criminals_ids_.erase(to_remove->Id());
    this->criminals_.remove(to_remove);
    return true;
}

bool DataBase::RemoveCrime(Crime *to_remove)
{
    if (to_remove == nullptr ||
        find(begin(this->crimes_), end(this->crimes_), to_remove) == end(this->crimes_))
        return true;

    this->crimes_ids_.erase(to_remove->Id());
    this->crimes_.remove(to_remove);
    return true;
}

bool DataBase::RemoveOrganization(Organization *to_remove)
{
    if (to_remove == nullptr ||
        find(begin(this->organizations_), end(this->organizations_), to_remove) == end(this->organizations_))
        return true;

    this->organizations_ids_.erase(to_remove->Id());
    this->organizations_.remove(to_remove);

    return true;
}

bool DataBase::AddCriminal(CriminalPerson *to_add)
{
    if (this->criminals_ids_.count(to_add->Id()))
        return true;

    this->criminals_.push_back(to_add);
    this->criminals_ids_.insert(make_pair(to_add->Id(), to_add));
    return true;
}

bool DataBase::AddCrime(Crime *to_add)
{
    if (this->crimes_ids_.count(to_add->Id()))
        return true;

    this->crimes_.push_back(to_add);
    this->crimes_ids_.insert(make_pair(to_add->Id(), to_add));
    return true;
}

bool DataBase::AddOrganization(Organization *to_add)
{
    if (this->organizations_ids_.count(to_add->Id()))
        return true;

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

bool DataBase::Start()
{
    this->OpenReadFile();
    this->ReadOrganizations();
    this->ReadCriminals();
    this->ReadCrimes();
    return true;
}

bool DataBase::Finish()
{
    this->CloseReadFile();
    this->OpenWriteFile();
    this->WriteOrganizations();
    this->WriteCriminals();
    this->WriteCrimes();
    this->CloseWriteFile();
    this->FreeMemory();
    return true;
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