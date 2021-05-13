#ifndef LR7_Z6_2_V27_UTILITIES_H
#define LR7_Z6_2_V27_UTILITIES_H


#include <algorithm>
#include <string>

using namespace std;

string LeftTrim(string s);

string RightTrim(string s);

string Trim(string s);

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

string CrimeTypeToString(const CrimeType &type);

CrimeType StringToCrimeType(const string &type);

string CriminalStatusToString(const CriminalStatus &status);

CriminalStatus StringToCriminalStatus(const string &str);

#endif //LR7_Z6_2_V27_UTILITIES_H
