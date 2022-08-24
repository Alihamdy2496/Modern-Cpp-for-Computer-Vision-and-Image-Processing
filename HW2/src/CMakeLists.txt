add_subdirectory(igg_image)

if(${APPLICATION} EQUAL 1)
    add_subdirectory(application1)

elseif(${APPLICATION} EQUAL 2)
    add_subdirectory(application2)

elseif(${APPLICATION} EQUAL 3)
    add_subdirectory(application3)

elseif(${APPLICATION} EQUAL 4)
    add_subdirectory(application4)

endif()
