find_library(TOOLS NAMES io_tools PATHS ${LIBRARY_OUTPUT_PATH})

add_library(igg_image STATIC image.cpp)

target_link_libraries(igg_image ${TOOLS})

target_include_directories(igg_image PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
