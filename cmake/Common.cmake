#Enable link time optimization if possible
include(CheckIPOSupported)
check_ipo_supported(RESULT result OUTPUT output)
if(result)
set(CMAKE_INTERPROCEDURAL_OPTIMIZATION TRUE)
message("Link time optimization is possible")
else()
message("Link time optimization is not supported: ${output}")
endif()