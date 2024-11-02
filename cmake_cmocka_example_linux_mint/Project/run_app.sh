#!/bin/bash

echo  "\nInstalled Versions:"
cd build
rm -rf *
cmake .. -Dunit-tests=off -Ddebug=off
make -j8


 

./firmware
