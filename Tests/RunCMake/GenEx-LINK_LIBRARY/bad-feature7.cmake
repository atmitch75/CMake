enable_language(C)

set(CMAKE_C_LINK_USING_feat_SUPPORTED TRUE)
set(CMAKE_C_LINK_USING_feat "NAME{}PATH{<LIBRARY>}")

add_library(dep SHARED empty.c)

add_library(lib SHARED empty.c)
target_link_libraries(lib PRIVATE "$<LINK_LIBRARY:feat,dep>")
