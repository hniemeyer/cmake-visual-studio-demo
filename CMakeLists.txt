cmake_minimum_required(VERSION 3.16)
project(try-stuff LANGUAGES CXX)

#Project wide setting
list(APPEND CMAKE_MODULE_PATH ${CMAKE_CURRENT_LIST_DIR}/cmake)

add_library(project_options INTERFACE)
target_compile_features(project_options INTERFACE cxx_std_20)

include(common)
include(CompilerWarnings)

add_library(project_warnings INTERFACE)
set_project_warnings(project_warnings)

find_package(fmt CONFIG REQUIRED)
add_subdirectory(src)