target_sources(example
  PRIVATE
    Example.cpp
)

target_include_directories(example
  PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
)
