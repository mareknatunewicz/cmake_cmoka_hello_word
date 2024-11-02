
## Introduction

Example project how to use cmocka + cmake + plus coverage report by using lcov, gcov, genhtml

## installation

For all *.sh scripts set correct permissions, incoke command for all scripts:

> chmod +x script.sh


Then run install.sh script or install all dependencies from this script manuall:

> sudo ./ install.sh

## Run app

Project is prepared by cmake to generate makefile

To compile and run app use script:

> ./run_app.sh

## Run unit tests

To compile and run unit_test use script:

> ./run_unit_tests.sh

On the terminal You will see result and list of performed tests.

To check code coverage go to:

> build->unit_test_report-> index.html

## important files, directories

|Name|Description|
|----|-----------|
|**unit_tests**   | directory to add new files with unit tests|
|**unit_tests.c** | main file for unit tests|
|**src**          | directory with the source code|
|**cmake**        | directory to keep additional settings for cmake, lcov
|**compiler_linker_options_app.cmake**  | compiler setttings for the app
|**compiler_linker_options_unit_tests.cmake** | compiler settings for the unit test app
|**gcc.cmake**                  | general compiler settins
|**lcov_ignore_files_list.txt** | list of file, directories ignore while preparing coverage report
|**lcov.lcovrc**                 | additional settings for lcov coverage report
|**sources_app.cmake** | list  directories, files needed by app
|**sources_unit_tests.cmake** | list of directories, file needed by unit test app