# Install script for directory: /home/sonia/thinc/pcl-pcl-1.7.2/surface

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_surfacex" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_surface.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_surface.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_surface.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "/usr/local/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_surface.so.1.7.2"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_surface.so.1.7"
    "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib/libpcl_surface.so"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_surface.so.1.7.2"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_surface.so.1.7"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libpcl_surface.so"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/sonia/thinc/pcl-pcl-1.7.2/build/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib:"
           NEW_RPATH "/usr/local/lib:/usr/lib/x86_64-linux-gnu/hdf5/openmpi:/usr/lib/x86_64-linux-gnu/openmpi/lib")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_surfacex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/sonia/thinc/pcl-pcl-1.7.2/build/surface/pcl_surface-1.7.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_surfacex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/surface" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/boost.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/eigen.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/ear_clipping.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/gp3.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/grid_projection.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/marching_cubes.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/marching_cubes_hoppe.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/marching_cubes_rbf.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/bilateral_upsampling.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/mls.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/organized_fast_mesh.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/reconstruction.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/processing.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/simplification_remove_unused_vertices.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/surfel_smoothing.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/texture_mapping.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/poisson.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/concave_hull.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/convex_hull.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/qhull.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_surfacex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/surface/3rdparty/poisson4" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/allocator.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/binary_node.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/bspline_data.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/factor.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/function_data.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/geometry.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/hash.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/marching_cubes_poisson.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/mat.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/multi_grid_octree_data.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/octree_poisson.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/polynomial.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/ppolynomial.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/sparse_matrix.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/vector.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/bspline_data.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/function_data.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/geometry.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/mat.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/multi_grid_octree_data.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/octree_poisson.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/polynomial.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/ppolynomial.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/sparse_matrix.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/3rdparty/poisson4/vector.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_surfacex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/surface/impl" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/gp3.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/grid_projection.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/marching_cubes.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/marching_cubes_hoppe.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/marching_cubes_rbf.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/bilateral_upsampling.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/mls.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/organized_fast_mesh.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/reconstruction.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/processing.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/surfel_smoothing.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/texture_mapping.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/poisson.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/concave_hull.hpp"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/impl/convex_hull.hpp"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xpcl_surfacex" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/pcl-1.7/pcl/surface/vtk_smoothing" TYPE FILE FILES
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/vtk_smoothing/vtk.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/vtk_smoothing/vtk_utils.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/vtk_smoothing/vtk_mesh_subdivision.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/vtk_smoothing/vtk_mesh_quadric_decimation.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/vtk_smoothing/vtk_mesh_smoothing_laplacian.h"
    "/home/sonia/thinc/pcl-pcl-1.7.2/surface/include/pcl/surface/vtk_smoothing/vtk_mesh_smoothing_windowed_sinc.h"
    )
endif()

