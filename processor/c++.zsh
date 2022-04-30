export CXX_FLAGS="-Wall -pedantic-errors"
export CXX_FLAGS_RELEASE="-O3 -march=native"
export CXX_FLAGS_RELEASE_EM="-O3"
export CXX_FLAGS_DEBUG="-O0 -g"

alias c++="c++ $CXX_FLAGS"
alias c++.release="c++ $CXX_FLAGS_RELEASE"
alias c++.debug="c++ $CXX_FLAGS_DEBUG"

alias g++="g++ $CXX_FLAGS"
alias g++.release="g++ $CXX_FLAGS_RELEASE"
alias g++.debug="g++ $CXX_FLAGS_RELEASE"

alias clang++="clang++ $CXX_FLAGS"
alias clang++.release="clang++ $CXX_FLAGS_RELEASE"
alias clang++.debug="clang++ $CXX_FLAGS $CXX_FLAGS_DEBUG"

alias em++="em++ $CXX_FLAGS"
alias em++.release="em++ $CXX_FLAGS_RELEASE_EM"
alias em++.debug="em++ $CXX_FLAGS_DEBUG"
