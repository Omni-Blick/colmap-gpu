set(VCPKG_TARGET_ARCHITECTURE x64)
set(VCPKG_CRT_LINKAGE dynamic)
set(VCPKG_LIBRARY_LINKAGE dynamic)
set(VCPKG_BUILD_TYPE release)
# OmniBlick GPU build: CUDA 13 Thrust needs C++17 in ceres[cuda] kernels,
# which ceres 2.2 pins at cxx_std_14 (a floor; CUDA_STANDARD 17 raises it).
if(PORT STREQUAL "ceres")
    set(VCPKG_CMAKE_CONFIGURE_OPTIONS "-DCMAKE_CUDA_STANDARD=17")
endif()
