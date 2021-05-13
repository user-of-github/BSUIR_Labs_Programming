#include "utilities.h"


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
}