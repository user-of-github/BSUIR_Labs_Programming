#ifndef LR7_Z6_2_V27_UTILITIES_H
#define LR7_Z6_2_V27_UTILITIES_H

#include <algorithm>

using std::string;
using std::find_first_of;
using std::isspace;

auto LeftTrim = [](string &s) {
    s.erase(s.begin(), find_if(s.begin(), s.end(), [](unsigned char ch) {
        return !isspace(ch);
    }));
};

auto RightTrim = [](string &s){
    s.erase(find_if(s.rbegin(), s.rend(), [](unsigned char ch) {
        return !isspace(ch);
    }).base(), s.end());
};

auto Trim = [](string &s){
    LeftTrim(s);
    RightTrim(s);
};

enum class CrimeType {
    DRUG_POSSESSION,
    ROBBERY,
    THEFT,
    BURGLARY,
    MURDER
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

#endif //LR7_Z6_2_V27_UTILITIES_H
