cmake_minimum_required(VERSION 2.8.9)
project (lab02)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -Wall")

file(GLOB_RECURSE sources "src/*.cpp")
file(GLOB_RECURSE headers "src/*.h")
file(MAKE_DIRECTORY "bin/")

#add_subdirectory (test)
#enable_testing ()
#add_test (NAME MyTest COMMAND Test)

add_executable("bin/lab02" ${sources} )
