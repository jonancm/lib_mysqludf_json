cmake_minimum_required(VERSION 2.8.4)
project(lib_mysqludf_json)

list(APPEND CMAKE_MODULE_PATH "${CMAKE_CURRENT_LIST_DIR}/cmake")
find_package(MySQL REQUIRED)
message("Found include dir: ${MYSQL_INCLUDE_DIR}")
message("Found libraries: ${MYSQL_LIBRARIES}")
include_directories("${MYSQL_INCLUDE_DIR}")

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    lib_mysqludf_json.c)

add_library(_mysqludf_json SHARED ${SOURCE_FILES})
# target_link_libraries(_mysqludf_json "${MYSQL_LIBRARIES}")

set(MYSQL_PLUGIN_DIR "/usr/lib/mysql/plugin" CACHE PATH "directory where the library should be installed")
install(TARGETS _mysqludf_json DESTINATION "${MYSQL_PLUGIN_DIR}")
