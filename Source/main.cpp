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
    EXPECT_TRUE(isValidString(""));
    EXPECT_TRUE(isValidString(lowLetters));
    EXPECT_TRUE(isValidString(upLetters));
    EXPECT_TRUE(isValidString(allLetters));
}

TEST (testValidString, notOnlyLetters)
{
    EXPECT_FALSE(isValidString(digitsWithLetters));
    EXPECT_FALSE(isValidString(signsWithLetters));
    EXPECT_FALSE(isValidString(cyrillicWithLetters));
}

TEST (testSort, onlyLetters)
{
    char str0[] = "";
    char str1[] = "zxakb";
    char str2[] = "XZAKB";
    char str3[] = "ZXKzxkABab";
    char str4[] = "BBABSDDSSzczxzxc";

    EXPECT_TRUE(sortLetters(str0));
    EXPECT_TRUE(sortLetters(str1));
    EXPECT_TRUE(sortLetters(str2));
    EXPECT_TRUE(sortLetters(str3));
    EXPECT_TRUE(sortLetters(str4));

    EXPECT_STREQ("", str0);
    EXPECT_STREQ("abkxz", str1);
    EXPECT_STREQ("ABKXZ", str2);
    EXPECT_STREQ("ABKXZabkxz", str3);
    EXPECT_STREQ("ABBBDDSSSccxxzzz", str4);
}

TEST (testSort, notOnlyLetters)
{
    char str1[] = "zx@#$%^&ak7 67b8 76тор";
    char str2[] = "XZAas% $$$#121  32іаіаKB";

    ASSERT_NO_THROW(sortLetters(str1));
    ASSERT_FALSE(sortLetters(str2));
}

int main(int argc, char **argv)
{
    testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}
