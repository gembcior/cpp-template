target_sources(main
  PRIVATE
    main.cpp
)

target_include_directories(main
  PRIVATE
    ${CMAKE_CURRENT_SOURCE_DIR}
)

target_link_libraries(main
  PRIVATE
    example
)
