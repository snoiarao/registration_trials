# Install script for directory: /home/sonia/thinc/pcl-pcl-1.7.2/common

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
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_common.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_common.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_common.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_common.so.1.7.2"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_common.so.1.7"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_common.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_common.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_common.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_common.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "::::::::::::::"
           NEW_RPATH "/usr/local/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sonia/thinc/pcl-pcl-1.7.2/build/common/pcl_common-1.7.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/correspondence.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/exceptions.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/pcl_base.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/pcl_exports.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/pcl_macros.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/point_cloud.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/point_traits.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/point_types_conversion.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/point_representation.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/point_types.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/for_each_type.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/pcl_tests.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/cloud_iterator.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/TextureMesh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLPointField.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLPointCloud2.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLImage.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLHeader.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/ModelCoefficients.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PolygonMesh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/Vertices.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PointIndices.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/sse.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLPointField.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLPointCloud2.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLImage.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PCLHeader.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/ModelCoefficients.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PolygonMesh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/Vertices.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/PointIndices.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/register_point_struct.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/conversions.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/common" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/boost.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/angles.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/bivariate_polynomial.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/centroid.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/concatenate.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/common.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/common_headers.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/distances.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/eigen.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/copy_point.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/io.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/file_io.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/intersections.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/norms.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/piecewise_linear_function.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/polynomial_calculations.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/poses_from_matches.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/time.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/time_trigger.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/transforms.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/transformation_from_correspondences.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/vector_average.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/pca.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/point_tests.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/synchronizer.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/utils.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/geometry.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/gaussian.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/point_operators.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/spring.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/intensity.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/random.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/generate.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/projection_matrix.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/register_point_struct.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/conversions.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/common/fft" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/fft/_kiss_fft_guts.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/fft/kiss_fft.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/fft/kiss_fftr.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/common/impl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/angles.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/bivariate_polynomial.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/centroid.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/common.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/eigen.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/intersections.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/copy_point.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/io.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/file_io.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/norms.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/piecewise_linear_function.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/polynomial_calculations.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/pca.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/transforms.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/transformation_from_correspondences.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/vector_average.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/gaussian.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/spring.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/intensity.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/random.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/generate.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/projection_matrix.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/common/impl/accumulators.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/impl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/impl/pcl_base.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/impl/instantiate.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/impl/point_types.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/impl/cloud_iterator.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/ros" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/ros/conversions.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/ros/register_point_struct.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/console" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/console/parse.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/console/print.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/console/time.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/range_image" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/bearing_angle_image.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/range_image.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/range_image_planar.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/range_image_spherical.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_commonx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/range_image/impl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/impl/range_image.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/impl/range_image_planar.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/common/include/pcl/range_image/impl/range_image_spherical.hpp"
    )
endif()

