add_executable(hello main.cpp utils.hpp)
target_link_libraries(hello PRIVATE project_options project_warnings fmt::fmt fmt::fmt-header-only)