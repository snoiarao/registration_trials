# Install script for directory: /home/sonia/thinc/pcl-pcl-1.7.2

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl" TYPE FILE FILES "/home/sonia/thinc/pcl-pcl-1.7.2/build/include/pcl/pcl_config.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpclconfigx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/pcl-1.7" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/PCLConfig.cmake"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/PCLConfigVersion.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/common/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/geometry/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/octree/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/io/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/kdtree/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/search/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/sample_consensus/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/filters/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/features/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/segmentation/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/visualization/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/surface/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/registration/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/keypoints/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/tracking/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/recognition/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/apps/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/outofcore/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/examples/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/people/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/test/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/tools/cmake_install.cmake")
  include("/home/sonia/thinc/pcl-pcl-1.7.2/build/doc/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/sonia/thinc/pcl-pcl-1.7.2/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
