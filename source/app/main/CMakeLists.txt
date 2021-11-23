include(Utils)

add_executable(main)

target_include_directories(main
  PRIVATE
    inc
)

add_subdirectory(src)

target_app_release(main)
