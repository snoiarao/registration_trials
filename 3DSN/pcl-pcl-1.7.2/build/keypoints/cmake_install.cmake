# Install script for directory: /home/sonia/thinc/pcl-pcl-1.7.2/keypoints

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_keypointsx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_keypoints.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_keypoints.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_keypoints.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_keypoints.so.1.7.2"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_keypoints.so.1.7"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_keypoints.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_keypoints.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_keypoints.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_keypoints.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib:"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_keypointsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sonia/thinc/pcl-pcl-1.7.2/build/keypoints/pcl_keypoints-1.7.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_keypointsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/keypoints" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/keypoint.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/narf_keypoint.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/sift_keypoint.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/uniform_sampling.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/smoothed_surfaces_keypoint.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/agast_2d.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/harris_3d.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/harris_6d.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/susan.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/iss_3d.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_keypointsx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/keypoints/impl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/keypoint.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/sift_keypoint.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/uniform_sampling.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/smoothed_surfaces_keypoint.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/agast_2d.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/harris_3d.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/harris_6d.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/susan.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/keypoints/include/pcl/keypoints/impl/iss_3d.hpp"
    )
endif()

