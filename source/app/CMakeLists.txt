include(utils)

add_executable(main)

add_subdirectory(src)

cpp_target_app_release(main)
