#ifndef LR7_Z6_2_V27_UTILITIES_H
#define LR7_Z6_2_V27_UTILITIES_H

#pragma once

#include <algorithm>

using std::string;
using std::find_first_of;
using std::isspace;

string LeftTrim(string s)
{
    s.erase(s.begin(), find_if(s.begin(), s.end(), [](unsigned char ch) {
        return !isspace(ch);
    }));

    return s;
};

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

enum class CrimeType
{
    DRUG_POSSESSION,
    ROBBERY,
    THEFT,
    BURGLARY,
    MURDER
};

enum class CriminalStatus
{
    ACTIVE_CRIMINAL,
    EX_CRIMINAL,
    PRISONER_CRIMINAL
};

string CrimeTypeToString(const CrimeType &type)
{
    switch (type)
    {
        case CrimeType::BURGLARY:
            return "Burglary";
        case CrimeType::ROBBERY:
            return "Robbery";
        case CrimeType::THEFT:
            return "Theft";
        case CrimeType::MURDER:
            return "Murder";
        case CrimeType::DRUG_POSSESSION:
            return "Drug possession";
        default:
            return "";
    }
}

string CriminalStatusToString(const CriminalStatus &status)
{
    switch (status)
    {
        case CriminalStatus::EX_CRIMINAL:
            return "Ex-criminal";
        case CriminalStatus::ACTIVE_CRIMINAL:
            return "active criminal";
        case CriminalStatus::PRISONER_CRIMINAL:
            return "prisoner";
        default:
            return "";
    }
}

#endif //LR7_Z6_2_V27_UTILITIES_H
