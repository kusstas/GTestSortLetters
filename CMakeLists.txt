cmake_minimum_required(VERSION 2.6)

project(sortLetter)

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_executable(${PROJECT_NAME} Source/main.cpp Source/sortLetter/sortLetter.cpp)

target_link_libraries(${PROJECT_NAME} ${GTEST_LIBRARIES} pthread)
