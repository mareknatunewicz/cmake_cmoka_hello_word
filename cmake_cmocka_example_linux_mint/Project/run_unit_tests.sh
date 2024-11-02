#!/bin/bash

#set path if they are differ from 
home_dir=$(pwd)

# path where all cmake configuration files are stored
cmake_script_dir="$home_dir/cmake"

# path to lcov setting file
lcov_settingFile="$home_dir/cmake/lcov.lcovrc"

# path to file which contains list of files and folders to ignore from coverage report
lcov_ignore_files_path="$home_dir/cmake/lcov_ignore_files_list.txt"


# build project
cd build
rm -rf *
cmake .. -Dunit-tests=on

make -j8
 
 # Run app to generate coverage report and perform unit test
./unit-tests

# run lcov 
lcov --config-file $lcov_settingFile --capture --directory . --output-file coverage.info



# Clear generated report from ignored files, folders
while IFS= read -r line; do
    lcov --remove coverage.info "$home_dir/$line" --output-file coverage.info
done < "$lcov_ignore_files_path"


#generate report in html format
genhtml --config-file $lcov_settingFile coverage.info --output-directory unit_test_report
