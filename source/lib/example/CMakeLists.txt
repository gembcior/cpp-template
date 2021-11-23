include(Testing)

add_library(example STATIC)

target_include_directories(example
  PUBLIC
    inc
)

add_subdirectory(src)
add_subdirectory(test)

testing_target_add_mock_library(example)
