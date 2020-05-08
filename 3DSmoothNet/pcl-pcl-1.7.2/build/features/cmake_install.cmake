# Install script for directory: /home/sonia/thinc/pcl-pcl-1.7.2/features

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_features.so.1.7.2"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_features.so.1.7"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_features.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_features.so"
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sonia/thinc/pcl-pcl-1.7.2/build/features/pcl_features-1.7.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/features" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/boost.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/eigen.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/board.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/cppf.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/cvfh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/our_cvfh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/crh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/don.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/feature.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/fpfh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/fpfh_omp.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/gfpfh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/integral_image2D.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/integral_image_normal.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/intensity_gradient.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/intensity_spin.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/linear_least_squares_normal.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/moment_invariants.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/moment_of_inertia_estimation.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/multiscale_feature_persistence.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/narf.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/narf_descriptor.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/normal_3d.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/normal_3d_omp.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/normal_based_signature.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/pfh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/pfh_tools.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/pfhrgb.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/ppf.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/ppfrgb.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/shot.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/shot_lrf.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/shot_lrf_omp.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/shot_omp.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/spin_image.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/principal_curvatures.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/rift.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/rops_estimation.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/statistical_multiscale_interest_region_extraction.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/vfh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/esf.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/3dsc.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/usc.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/boundary.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/range_image_border_extractor.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_featuresx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/features/impl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/board.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/cppf.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/cvfh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/our_cvfh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/crh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/don.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/feature.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/fpfh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/fpfh_omp.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/gfpfh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/integral_image2D.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/integral_image_normal.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/intensity_gradient.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/intensity_spin.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/linear_least_squares_normal.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/moment_invariants.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/moment_of_inertia_estimation.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/multiscale_feature_persistence.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/narf.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/normal_3d.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/normal_3d_omp.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/normal_based_signature.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/pfh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/pfhrgb.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/ppf.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/ppfrgb.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/shot.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/shot_lrf.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/shot_lrf_omp.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/shot_omp.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/spin_image.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/principal_curvatures.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/rift.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/rops_estimation.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/statistical_multiscale_interest_region_extraction.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/vfh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/esf.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/3dsc.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/usc.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/boundary.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/features/include/pcl/features/impl/range_image_border_extractor.hpp"
    )
endif()

