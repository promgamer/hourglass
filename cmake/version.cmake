set(HOURGLASS_VERSION_MAJOR 0)
set(HOURGLASS_VERSION_MINOR 1)
set(HOURGLASS_VERSION_PATCH 0)
set(HOURGLASS_VERSION "${HOURGLASS_VERSION_MAJOR}.${HOURGLASS_VERSION_MINOR}.${HOURGLASS_VERSION_PATCH}")

find_package(Git)
execute_process(
        COMMAND git log -1 --format=%h
        WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}/
        OUTPUT_VARIABLE HOURGLASS_COMMIT_HASH
        OUTPUT_STRIP_TRAILING_WHITESPACE
)

message(STATUS "Hourglass Version: ${HOURGLASS_VERSION} @ ${HOURGLASS_COMMIT_HASH}")