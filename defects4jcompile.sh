#!/bin/bash
. data.config
JAVA_HOME=$ASTOR_JRE7/..
export JAVA_HOME
cd defects4j
mkdir build
./framework/bin/defects4j checkout -p Time -v 1b -w build/Time-1
cd build/Time-1
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 2b -w build/Time-2
cd build/Time-2
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 3b -w build/Time-3
cd build/Time-3
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 4b -w build/Time-4
cd build/Time-4
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 5b -w build/Time-5
cd build/Time-5
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 6b -w build/Time-6
cd build/Time-6
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 7b -w build/Time-7
cd build/Time-7
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 8b -w build/Time-8
cd build/Time-8
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 9b -w build/Time-9
cd build/Time-9
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 10b -w build/Time-10
cd build/Time-10
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 11b -w build/Time-11
cd build/Time-11
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 12b -w build/Time-12
cd build/Time-12
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 13b -w build/Time-13
cd build/Time-13
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 14b -w build/Time-14
cd build/Time-14
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 15b -w build/Time-15
cd build/Time-15
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 16b -w build/Time-16
cd build/Time-16
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 17b -w build/Time-17
cd build/Time-17
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 18b -w build/Time-18
cd build/Time-18
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 19b -w build/Time-19
cd build/Time-19
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 20b -w build/Time-20
cd build/Time-20
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 21b -w build/Time-21
cd build/Time-21
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 22b -w build/Time-22
cd build/Time-22
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 23b -w build/Time-23
cd build/Time-23
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 24b -w build/Time-24
cd build/Time-24
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 25b -w build/Time-25
cd build/Time-25
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 26b -w build/Time-26
cd build/Time-26
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Time -v 27b -w build/Time-27
cd build/Time-27
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 1b -w build/Math-1
cd build/Math-1
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 2b -w build/Math-2
cd build/Math-2
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 3b -w build/Math-3
cd build/Math-3
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 4b -w build/Math-4
cd build/Math-4
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 5b -w build/Math-5
cd build/Math-5
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 6b -w build/Math-6
cd build/Math-6
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 7b -w build/Math-7
cd build/Math-7
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 8b -w build/Math-8
cd build/Math-8
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 9b -w build/Math-9
cd build/Math-9
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 10b -w build/Math-10
cd build/Math-10
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 11b -w build/Math-11
cd build/Math-11
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 12b -w build/Math-12
cd build/Math-12
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 13b -w build/Math-13
cd build/Math-13
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 14b -w build/Math-14
cd build/Math-14
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 15b -w build/Math-15
cd build/Math-15
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 16b -w build/Math-16
cd build/Math-16
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 17b -w build/Math-17
cd build/Math-17
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 18b -w build/Math-18
cd build/Math-18
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 19b -w build/Math-19
cd build/Math-19
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 20b -w build/Math-20
cd build/Math-20
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 21b -w build/Math-21
cd build/Math-21
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 22b -w build/Math-22
cd build/Math-22
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 23b -w build/Math-23
cd build/Math-23
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 24b -w build/Math-24
cd build/Math-24
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 25b -w build/Math-25
cd build/Math-25
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 26b -w build/Math-26
cd build/Math-26
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 27b -w build/Math-27
cd build/Math-27
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 28b -w build/Math-28
cd build/Math-28
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 29b -w build/Math-29
cd build/Math-29
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 30b -w build/Math-30
cd build/Math-30
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 31b -w build/Math-31
cd build/Math-31
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 32b -w build/Math-32
cd build/Math-32
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 33b -w build/Math-33
cd build/Math-33
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 34b -w build/Math-34
cd build/Math-34
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 35b -w build/Math-35
cd build/Math-35
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 36b -w build/Math-36
cd build/Math-36
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 37b -w build/Math-37
cd build/Math-37
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 38b -w build/Math-38
cd build/Math-38
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 39b -w build/Math-39
cd build/Math-39
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 40b -w build/Math-40
cd build/Math-40
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 41b -w build/Math-41
cd build/Math-41
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 42b -w build/Math-42
cd build/Math-42
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 43b -w build/Math-43
cd build/Math-43
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 44b -w build/Math-44
cd build/Math-44
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 45b -w build/Math-45
cd build/Math-45
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 46b -w build/Math-46
cd build/Math-46
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 47b -w build/Math-47
cd build/Math-47
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 48b -w build/Math-48
cd build/Math-48
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 49b -w build/Math-49
cd build/Math-49
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 50b -w build/Math-50
cd build/Math-50
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 51b -w build/Math-51
cd build/Math-51
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 52b -w build/Math-52
cd build/Math-52
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 53b -w build/Math-53
cd build/Math-53
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 54b -w build/Math-54
cd build/Math-54
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 55b -w build/Math-55
cd build/Math-55
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 56b -w build/Math-56
cd build/Math-56
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 57b -w build/Math-57
cd build/Math-57
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 58b -w build/Math-58
cd build/Math-58
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 59b -w build/Math-59
cd build/Math-59
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 60b -w build/Math-60
cd build/Math-60
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 61b -w build/Math-61
cd build/Math-61
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 62b -w build/Math-62
cd build/Math-62
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 63b -w build/Math-63
cd build/Math-63
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 64b -w build/Math-64
cd build/Math-64
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 65b -w build/Math-65
cd build/Math-65
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 66b -w build/Math-66
cd build/Math-66
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 67b -w build/Math-67
cd build/Math-67
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 68b -w build/Math-68
cd build/Math-68
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 69b -w build/Math-69
cd build/Math-69
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 70b -w build/Math-70
cd build/Math-70
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 71b -w build/Math-71
cd build/Math-71
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 72b -w build/Math-72
cd build/Math-72
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 73b -w build/Math-73
cd build/Math-73
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 74b -w build/Math-74
cd build/Math-74
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 75b -w build/Math-75
cd build/Math-75
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 76b -w build/Math-76
cd build/Math-76
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 77b -w build/Math-77
cd build/Math-77
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 78b -w build/Math-78
cd build/Math-78
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 79b -w build/Math-79
cd build/Math-79
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 80b -w build/Math-80
cd build/Math-80
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 81b -w build/Math-81
cd build/Math-81
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 82b -w build/Math-82
cd build/Math-82
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 83b -w build/Math-83
cd build/Math-83
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 84b -w build/Math-84
cd build/Math-84
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 85b -w build/Math-85
cd build/Math-85
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 86b -w build/Math-86
cd build/Math-86
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 87b -w build/Math-87
cd build/Math-87
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 88b -w build/Math-88
cd build/Math-88
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 89b -w build/Math-89
cd build/Math-89
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 90b -w build/Math-90
cd build/Math-90
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 91b -w build/Math-91
cd build/Math-91
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 92b -w build/Math-92
cd build/Math-92
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 93b -w build/Math-93
cd build/Math-93
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 94b -w build/Math-94
cd build/Math-94
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 95b -w build/Math-95
cd build/Math-95
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 96b -w build/Math-96
cd build/Math-96
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 97b -w build/Math-97
cd build/Math-97
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 98b -w build/Math-98
cd build/Math-98
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 99b -w build/Math-99
cd build/Math-99
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 100b -w build/Math-100
cd build/Math-100
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 101b -w build/Math-101
cd build/Math-101
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 102b -w build/Math-102
cd build/Math-102
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 103b -w build/Math-103
cd build/Math-103
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 104b -w build/Math-104
cd build/Math-104
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 105b -w build/Math-105
cd build/Math-105
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Math -v 106b -w build/Math-106
cd build/Math-106
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 1b -w build/Chart-1
cd build/Chart-1
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 2b -w build/Chart-2
cd build/Chart-2
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 3b -w build/Chart-3
cd build/Chart-3
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 4b -w build/Chart-4
cd build/Chart-4
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 5b -w build/Chart-5
cd build/Chart-5
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 6b -w build/Chart-6
cd build/Chart-6
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 7b -w build/Chart-7
cd build/Chart-7
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 8b -w build/Chart-8
cd build/Chart-8
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 9b -w build/Chart-9
cd build/Chart-9
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 10b -w build/Chart-10
cd build/Chart-10
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 11b -w build/Chart-11
cd build/Chart-11
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 12b -w build/Chart-12
cd build/Chart-12
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 13b -w build/Chart-13
cd build/Chart-13
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 14b -w build/Chart-14
cd build/Chart-14
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 15b -w build/Chart-15
cd build/Chart-15
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 16b -w build/Chart-16
cd build/Chart-16
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 17b -w build/Chart-17
cd build/Chart-17
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 18b -w build/Chart-18
cd build/Chart-18
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 19b -w build/Chart-19
cd build/Chart-19
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 20b -w build/Chart-20
cd build/Chart-20
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 21b -w build/Chart-21
cd build/Chart-21
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 22b -w build/Chart-22
cd build/Chart-22
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 23b -w build/Chart-23
cd build/Chart-23
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 24b -w build/Chart-24
cd build/Chart-24
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 25b -w build/Chart-25
cd build/Chart-25
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Chart -v 26b -w build/Chart-26
cd build/Chart-26
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 1b -w build/Lang-1
cd build/Lang-1
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 2b -w build/Lang-2
cd build/Lang-2
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 3b -w build/Lang-3
cd build/Lang-3
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 4b -w build/Lang-4
cd build/Lang-4
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 5b -w build/Lang-5
cd build/Lang-5
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 6b -w build/Lang-6
cd build/Lang-6
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 7b -w build/Lang-7
cd build/Lang-7
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 8b -w build/Lang-8
cd build/Lang-8
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 9b -w build/Lang-9
cd build/Lang-9
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 10b -w build/Lang-10
cd build/Lang-10
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 11b -w build/Lang-11
cd build/Lang-11
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 12b -w build/Lang-12
cd build/Lang-12
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 13b -w build/Lang-13
cd build/Lang-13
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 14b -w build/Lang-14
cd build/Lang-14
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 15b -w build/Lang-15
cd build/Lang-15
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 16b -w build/Lang-16
cd build/Lang-16
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 17b -w build/Lang-17
cd build/Lang-17
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 18b -w build/Lang-18
cd build/Lang-18
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 19b -w build/Lang-19
cd build/Lang-19
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 20b -w build/Lang-20
cd build/Lang-20
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 21b -w build/Lang-21
cd build/Lang-21
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 22b -w build/Lang-22
cd build/Lang-22
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 23b -w build/Lang-23
cd build/Lang-23
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 24b -w build/Lang-24
cd build/Lang-24
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 25b -w build/Lang-25
cd build/Lang-25
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 26b -w build/Lang-26
cd build/Lang-26
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 27b -w build/Lang-27
cd build/Lang-27
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 28b -w build/Lang-28
cd build/Lang-28
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 29b -w build/Lang-29
cd build/Lang-29
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 30b -w build/Lang-30
cd build/Lang-30
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 31b -w build/Lang-31
cd build/Lang-31
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 32b -w build/Lang-32
cd build/Lang-32
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 33b -w build/Lang-33
cd build/Lang-33
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 34b -w build/Lang-34
cd build/Lang-34
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 35b -w build/Lang-35
cd build/Lang-35
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 36b -w build/Lang-36
cd build/Lang-36
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 37b -w build/Lang-37
cd build/Lang-37
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 38b -w build/Lang-38
cd build/Lang-38
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 39b -w build/Lang-39
cd build/Lang-39
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 40b -w build/Lang-40
cd build/Lang-40
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 41b -w build/Lang-41
cd build/Lang-41
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 42b -w build/Lang-42
cd build/Lang-42
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 43b -w build/Lang-43
cd build/Lang-43
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 44b -w build/Lang-44
cd build/Lang-44
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 45b -w build/Lang-45
cd build/Lang-45
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 46b -w build/Lang-46
cd build/Lang-46
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 47b -w build/Lang-47
cd build/Lang-47
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 48b -w build/Lang-48
cd build/Lang-48
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 49b -w build/Lang-49
cd build/Lang-49
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 50b -w build/Lang-50
cd build/Lang-50
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 51b -w build/Lang-51
cd build/Lang-51
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 52b -w build/Lang-52
cd build/Lang-52
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 53b -w build/Lang-53
cd build/Lang-53
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 54b -w build/Lang-54
cd build/Lang-54
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 55b -w build/Lang-55
cd build/Lang-55
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 56b -w build/Lang-56
cd build/Lang-56
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 57b -w build/Lang-57
cd build/Lang-57
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 58b -w build/Lang-58
cd build/Lang-58
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 59b -w build/Lang-59
cd build/Lang-59
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 60b -w build/Lang-60
cd build/Lang-60
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 61b -w build/Lang-61
cd build/Lang-61
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 62b -w build/Lang-62
cd build/Lang-62
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 63b -w build/Lang-63
cd build/Lang-63
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 64b -w build/Lang-64
cd build/Lang-64
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
./framework/bin/defects4j checkout -p Lang -v 65b -w build/Lang-65
cd build/Lang-65
../../framework/bin/defects4j compile 2>&1 | tee compile.txt
../../framework/bin/defects4j test 2>&1 | tee test.txt
cd ../..
cd ..
