cmake_minimum_required(VERSION 3.4.1)

if(DEFINED ENV{VITASDK})
  set(CMAKE_TOOLCHAIN_FILE "$ENV{VITASDK}/share/vita.toolchain.cmake" CACHE PATH "toolchain file")
else()
  message(FATAL_ERROR "Please define VITASDK to point to your SDK path!")
endif()

include("$ENV{VITASDK}/share/vita.cmake" REQUIRED)

project(Mari0)

set(TARGET_NAME ${PROJECT_NAME})

set(VITA_APP_NAME "Mari0")
set(VITA_TITLEID  "MARI00001")
set(VITA_VERSION  "01.00")
set(VITA_MKSFOEX_FLAGS "${VITA_MKSFOEX_FLAGS} -d PARENTAL_LEVEL=1")
set(VITA_MKSFOEX_FLAGS "${VITA_MKSFOEX_FLAGS} -d ATTRIBUTE2=12")

function(create_zip output_file input_files working_dir)
    add_custom_command(
        COMMAND ${CMAKE_COMMAND} -E tar "cf" "${output_file}" --format=zip -- ${input_files}
        WORKING_DIRECTORY "${working_dir}"
        OUTPUT  "${output_file}"
        DEPENDS ${input_files}
        COMMENT "Zipping to ${output_file}."
    )
endfunction()

file(GLOB ZIP_FILES "${CMAKE_CURRENT_SOURCE_DIR}/assets/*")
create_zip("${CMAKE_BINARY_DIR}/game.love" "${ZIP_FILES}" "${CMAKE_CURRENT_SOURCE_DIR}/assets")

vita_create_vpk(${PROJECT_NAME}.vpk ${VITA_TITLEID} ${CMAKE_SOURCE_DIR}/love.self
    VERSION ${VITA_VERSION}
    NAME ${VITA_APP_NAME}
    FILE sce_sys sce_sys
    FILE module module
    FILE ${CMAKE_BINARY_DIR}/game.love game.love
)
