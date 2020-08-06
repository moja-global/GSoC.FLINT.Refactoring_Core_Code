# Install script for directory: E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/FMT")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/fmt-config.cmake"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/fmt-config-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake"
         "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/CMakeFiles/Export/lib/cmake/fmt/fmt-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt/fmt-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/CMakeFiles/Export/lib/cmake/fmt/fmt-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/CMakeFiles/Export/lib/cmake/fmt/fmt-targets-debug.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/CMakeFiles/Export/lib/cmake/fmt/fmt-targets-minsizerel.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/CMakeFiles/Export/lib/cmake/fmt/fmt-targets-relwithdebinfo.cmake")
  endif()
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/fmt" TYPE FILE FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/CMakeFiles/Export/lib/cmake/fmt/fmt-targets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Dd][Ee][Bb][Uu][Gg])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/Debug/fmtd.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/Release/fmt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Mm][Ii][Nn][Ss][Ii][Zz][Ee][Rr][Ee][Ll])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/MinSizeRel/fmt.lib")
  elseif("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/RelWithDebInfo/fmt.lib")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE OPTIONAL FILES
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/$<TARGET_PDB_FILE:fmt"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/fmt-header-only>"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/fmt" TYPE FILE FILES
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/chrono.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/color.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/compile.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/core.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/format.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/format-inl.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/locale.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/os.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/ostream.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/posix.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/printf.h"
    "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/include/fmt/ranges.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/fmt.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/doc/cmake_install.cmake")
  include("E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/test/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "E:/Development/moja-global/GSoC.FLINT.Refactoring_Core_Code/moja-benchmark/fmt-7.0.1/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
