cmake_minimum_required(VERSION 3.21.1)
# C:\\Qt\\5.15.2\\mingw81_64\\bin
# C:\Qt\6.5.3\mingw_64\bin
# \6.5.3\mingw_64
# C:\Qt\Tools\mingw1120_64\bin

set(CMAKE_PREFIX_PATH "C:\\Qt\\5.15.2\\mingw81_64\\lib\\cmake\\Qt5")
project(QmlStudy VERSION 0.0.0 LANGUAGES CXX)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
message("dir "  ${CMAKE_CURRENT_SOURCE_DIR})
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)


#指定输出路径
SET(OUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/bin)
if (NOT EXISTS ${OUT_PATH})
    file(MAKE_DIRECTORY ${OUT_PATH})
endif ()
SET(EXECUTABLE_OUTPUT_PATH ${OUT_PATH})
SET(LIBRARY_OUTPUT_PATH ${OUT_PATH})
# 指定 自定模块目录
set(QML_IMPORT_PATH ${OUT_PATH})

#查找依赖
find_package(Qt5 COMPONENTS  QuickControls2 REQUIRED)
set(BIN_NAME qmlStudy)
#寻找源码
message("dir "  ${CMAKE_CURRENT_SOURCE_DIR})

file(GLOB_RECURSE SRCS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} 
    ${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp
    #${CMAKE_CURRENT_SOURCE_DIR}/src/include/*.h
    ${CMAKE_CURRENT_SOURCE_DIR}/assets/*.qrc

)


message("src dir "  ${CMAKE_CURRENT_SOURCE_DIR}/src)

add_executable(${BIN_NAME}   WIN32)
target_sources(${BIN_NAME} PRIVATE ${SRCS})
target_link_libraries(${BIN_NAME} PRIVATE
        Qt5::Quick
        Qt5::Qml
        Qt5::Core
        Qt5::QuickControls2
    )