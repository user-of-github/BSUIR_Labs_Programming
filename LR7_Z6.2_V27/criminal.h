#ifndef LR7_Z6_2_V27_CRIMINAL_H
#define LR7_Z6_2_V27_CRIMINAL_H

#include <list>
#include "crime.h"
#include "organization.h"

using std::string;
using std::list;

struct Color
{
    unsigned char red,
            green,
            blue;
};

class Crime;

// (место преступления, участники, последствия, комментарии
//специалистов
class CriminalPerson
{
public:
    string name,
            surname,
            patronymic;
    string nickname;
    unsigned short height; // SM
    unsigned short weight; // KG
    Color hair_color;
    string special_signs;
    string citizenship;
    list<string> languages;
    string criminal_type;
    list<Organization *> organizations;
    list<Crime *> crimes;
};


#endif //LR7_Z6_2_V27_CRIMINAL_H
