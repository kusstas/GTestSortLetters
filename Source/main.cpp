#include <gtest/gtest.h>
#include "sortLetter/sortLetter.h"

const char* lowLetters = "qwertyuiopasdfghjklzxcvbnm";
const char* upLetters = "QWERTYUIOPAASDFGHJKLZXCVBNM";
const char* allLetters = "QWERTYUIOPAASDFGHJKLZXCVBNMqwertyuiopasdfghjklzxcvbnm";

const char* digitsWithLetters = "1242qwerty24432uiopas234dfghjklzxcvbnm";
const char* signsWithLetters = "QWERTYU IOPA-@#$% ^ASDFGH  JKLZX CVBNM";
const char* cyrillicWithLetters = "QWERTYUIOPAASDFGHJKLіваЕНРИZXCVBNMqwertyuiopasdfghДЛОРГсjklzxcvbnm";


TEST (testValidString, onlyLetters)
{
    ASSERT_EQ(true, isValidString(lowLetters));
    ASSERT_EQ(true, isValidString(upLetters));
    ASSERT_EQ(true, isValidString(allLetters));
}

TEST (testValidString, notOnlyLetters)
{
    ASSERT_EQ(false, isValidString(digitsWithLetters));
    ASSERT_EQ(false, isValidString(signsWithLetters));
    ASSERT_EQ(false, isValidString(cyrillicWithLetters));
}

TEST (testSort, onlyLetters)
{
    char str1[256] = "zxakb";
    char str2[256] = "XZAKB";
    char str3[256] = "ZXKzxkABab";

    ASSERT_EQ(true, sortLetters(str1));
    ASSERT_EQ(true, sortLetters(str2));
    ASSERT_EQ(true, sortLetters(str3));

    ASSERT_STREQ("abkxz", str1);
    ASSERT_STREQ("ABKXZ", str2);
    ASSERT_STREQ("ABKXZabkxz", str3);
}

TEST (testSort, notOnlyLetters)
{
    char str1[256] = "zx@#$%^&ak7 67b8 76тор";
    char str2[256] = "XZAas% $$$#121  32іаіаKB";

    ASSERT_NO_THROW(sortLetters(str1));
    ASSERT_EQ(false, sortLetters(str2));
}

int main(int argc, char **argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}