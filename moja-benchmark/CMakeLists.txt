cmake_minimum_required(VERSION 3.1...3.13)

if(${CMAKE_VERSION} VERSION_LESS 3.12)
    cmake_policy(VERSION ${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION})
endif()

project(moja.benchmark VERSION 1.0
                  DESCRIPTION "moja benchmark"
                  LANGUAGES CXX)

add_compile_options($<$<CXX_COMPILER_ID:MSVC>:/MP>)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(Boost)
find_package(benchmark CONFIG REQUIRED)
find_package(Poco REQUIRED Foundation)
find_package(fmt CONFIG REQUIRED)

add_executable(moja.benchmark src/variant.cpp src/format.cpp )

target_link_libraries(moja.benchmark 
    benchmark::benchmark
    fmt::fmt-header-only
    Poco::Foundation
)