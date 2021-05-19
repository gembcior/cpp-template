function(CPP_TARGET_LISTING TARGET)
  get_target_property(TARGET_SUFFIX ${TARGET} SUFFIX)
  add_custom_command(TARGET ${TARGET} POST_BUILD COMMAND
    objdump -h -D ${TARGET} > ${TARGET}.lst
  )
endfunction()


function(CPP_TARGET_SIZE TARGET)
  get_target_property(TARGET_SUFFIX ${TARGET} SUFFIX)
  add_custom_command(TARGET ${TARGET} POST_BUILD COMMAND
    size ${TARGET}
  )
endfunction()


function(CPP_TARGET_INSTALL TARGET)
  install(TARGETS ${TARGET}
    CONFIGURATIONS Release
    RUNTIME DESTINATION Release/bin
  )

  install(TARGETS ${TARGET}
    CONFIGURATIONS Debug
    RUNTIME DESTINATION Debug/bin
  )
endfunction()


function(CPP_TARGET_APP_RELEASE TARGET)
  cpp_target_size(${TARGET})
  cpp_target_listing(${TARGET})
  cpp_target_install(${TARGET})
endfunction()
