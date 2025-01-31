function(check_pthread_set_name HAS_PTHREAD)
        include(CheckSymbolExists)
        set(CMAKE_REQUIRED_LIBRARIES ${PTHREAD_LIBRARIES})
        set(CMAKE_REQUIRED_DEFINITIONS -D_GNU_SOURCE)
        set(TMP_FLAGS "${CMAKE_C_FLAGS}")
        set(CMAKE_C_FLAGS "")
        check_symbol_exists(pthread_setname_np "pthread.h" ${HAS_PTHREAD})
        set(CMAKE_C_FLAGS "${TMP_FLAGS}")
        set(CMAKE_REQUIRED_LIBRARIES)
        set(CMAKE_REQUIRED_DEFINITIONS)
endfunction()