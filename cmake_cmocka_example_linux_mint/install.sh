#!/bin/bash


sudo apt-get update
sudo apt-get install -y build-essential

sudo apt-get install -y cmake

sudo apt-get install -y libcmocka-dev

sudo apt-get install -y doxygen

sudo apt-get install -y lcov


echo -e "\nInstalled Versions:"
echo -e "-------------------"
echo -e "lcov\t: $(lcov --version | head -n 1)"
echo -e "doxygen\t: $(doxygen --version | head -n 1)"
echo -e "GCC\t: $(gcc --version | head -n 1)"
echo -e "CMake\t: $(cmake --version | head -n 1)"
echo -e "CMocka\t: $(dpkg -s libcmocka-dev | grep '^Version:' | awk '{print $2}')"