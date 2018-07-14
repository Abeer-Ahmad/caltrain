cmake_minimum_required(VERSION 3.8)
project(Lab_3___Synchronization_and_Mutual_Exclusion)

set(CMAKE_C_STANDARD 99)
set(CMAKE_CXX_FLAGS "<other compiler flags> -pthread")

add_executable(Lab_3___Synchronization_and_Mutual_Exclusion
        src/caltrain.c
        src/caltrain.h
        src/caltrain-runner.c)

target_link_libraries(${PROJECT_NAME} pthread)