#!/bin/bash
if [ ! -d "../test_build" ]; then
   mkdir ../test_build
   cp -r ../themes/ ../test_build/themes/
   cp -r ../fonts/ ../test_build/fonts/
   cp ../4ed ../test_build/4ed
   cp ../4ed_app.so ../test_build/4ed_app.so
   cp ../config.4coder ../test_build/config.4coder
fi

pushd ../test_build
../custom/bin/buildsuper_x64-mac.sh ../4coder_byp/4coder_byp.cpp "$1"
../4coder_byp/apply.sh
popd
