set(ENV_COMMON "LD_PRELOAD=/home/ymx/quartz/build/src/lib/libnvmemul.so")
include_directories(/home/ymx/quartz/src/lib)
include_directories(/home/ymx/quartz/build/src/lib)
add_definitions(-g)
add_definitions(-Wall)
#add_definitions(-DNDEBUG)
add_library(nvmemul SHARED IMPORTED )
set_target_properties(nvmemul PROPERTIES   IMPORTED_LOCATION "/home/ymx/quartz/build/src/lib/libnvmemul.so")
add_executable(test_nvm_remote_dram ${CMAKE_CURRENT_SOURCE_DIR}/test_nvm_remote_dram.c)
target_link_libraries(test_nvm_remote_dram nvmemul)

add_executable(test_nvm ${CMAKE_CURRENT_SOURCE_DIR}/test_nvm.c)
target_link_libraries(test_nvm nvmemul)

set(ENV_COMMON "LD_PRELOAD=/home/ymx/quartz/build/src/lib/libnvmemul.so")

