enable_language(C)

set(CMAKE_C_LINK_USING_feat1_SUPPORTED TRUE)
set(CMAKE_C_LINK_USING_feat1 "<LIBRARY>")

set(CMAKE_LINK_LIBRARIES_ONLY_TARGETS 1)

add_library(dep1 SHARED empty.c)

add_library(lib1 SHARED empty.c)
# accepted
target_link_libraries(lib1 PRIVATE "$<LINK_LIBRARY:feat1,dep1>")

add_library(lib2 SHARED empty.c)
# invalid
target_link_libraries(lib2 PRIVATE "$<LINK_LIBRARY:feat1,external>")
