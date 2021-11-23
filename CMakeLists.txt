cmake_minimum_required(VERSION 3.20)

include(FetchContent)

FetchContent_Declare(cmake-utility
  GIT_REPOSITORY https://github.com/gembcior/cmake-utility.git
  GIT_TAG origin/main
)

FetchContent_GetProperties(cmake-utility)
FetchContent_MakeAvailable(cmake-utility)

list(APPEND CMAKE_MODULE_PATH ${cmake-utility_SOURCE_DIR}/modules)
set(TOOLCHAIN_FILES_PATH ${cmake-utility_SOURCE_DIR}/toolchains)

if (NOT CMAKE_TOOLCHAIN_FILE)
  set(CMAKE_TOOLCHAIN_FILE ${TOOLCHAIN_FILES_PATH}/gcc_native.cmake CACHE PATH "Toolchain file path." FORCE)
endif()

project(cpp-template CXX C)
enable_testing()

if (NOT CMAKE_BUILD_TYPE)
  set(CMAKE_BUILD_TYPE Release CACHE STRING "Build type." FORCE)
endif()

if (CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
  set(CMAKE_INSTALL_PREFIX ${CMAKE_BINARY_DIR}/artifacts CACHE PATH "Install path prefix." FORCE)
endif()

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(CMAKE_C_STANDARD 11)
set(CMAKE_C_STANDARD_REQUIRED True)

set(CMAKE_EXPORT_COMPILE_COMMANDS "ON")

add_subdirectory(source)
