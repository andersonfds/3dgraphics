cmake_minimum_required(VERSION 3.28)

project(graphics)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

# Link Vulkan and GLFW
find_package(Vulkan REQUIRED)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)

include_directories(${Vulkan_INCLUDE_DIRS} ${GLFW_INCLUDE_DIRS} ${GLM_INCLUDE_DIRS})
link_libraries(${Vulkan_LIBRARIES} glfw)

# Project structure
add_executable(graphics main.cpp)
