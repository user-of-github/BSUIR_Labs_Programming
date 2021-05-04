#ifndef LR7_Z6_2_V27_CRIME_H
#define LR7_Z6_2_V27_CRIME_H

#pragma once

#include <list>
#include "criminal.h"

using std::string;
using std::list;

class CriminalPerson;

class Crime
{
public:
    string place;
    list<CriminalPerson *> participants;
    string consequences;
    list<string> experts_comments;
};


#endif //LR7_Z6_2_V27_CRIME_H
