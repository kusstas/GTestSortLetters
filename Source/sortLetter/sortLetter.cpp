#include "sortLetter.h"
#include <cctype>

// check on other symbols (string has only letters)
bool isValidString(const char* str)
{
    for (int i = 0; str[i] != '\0'; i++)
    {
        if (!isalpha(str[i]))
            return false;
    }
    return true;
}

// sort
bool sortLetters(char* str)
{
    const char lRange = 'A';
    const char rRange = 'z';
    const int sizeCounters = rRange - lRange + 1;

    if (!isValidString(str))
        return false;

    int counters[sizeCounters];

    for (int i = 0; i < sizeCounters; i++)
        counters[i] = 0;

    for (int i = 0; str[i] != '\0'; i++)
        counters[str[i] - lRange]++;

    int c = 0;
    for (int i = 0; i < sizeCounters; i++)
    {
        for (int j = 0; j < counters[i]; j++)
        {
            str[c] = i + lRange;
            c++;
        }
    }

    return true;
}