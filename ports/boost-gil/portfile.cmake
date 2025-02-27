# Automatically generated by scripts/boost/generate-ports.ps1

vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO boostorg/gil
    REF boost-${VERSION}
    SHA512 97de2f6af8b60f826c330677646ebf9e94832f4e94bbe2be7ec799856956e2f6c809f6bbd00541642e7f6db4817d2f10343ab55babdb6710bb9c1c702c313c6e
    HEAD_REF master
    PATCHES
        remove-boost-filesystem-dep.diff
)

set(FEATURE_OPTIONS "")
boost_configure_and_install(
    SOURCE_PATH "${SOURCE_PATH}"
    OPTIONS ${FEATURE_OPTIONS}
)
