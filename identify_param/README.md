# Identify Parameters
The module is used to generate the pair of configuration parameters and test methods against Redisson

## Prerequisites
- Java 8

## Required files to generate mapping
- test_method_list.json - `get_test_method_list.py` will generate a list of test methods used by redisson.
- conf_params.txt - manually collected from `app/redisson/redisson/src/main/java/org/redisson/config`
You need to put all generated files into the `results/cassandra` directory.

## How to set up cassadra
- clone redisson, `git clone https://github.com/redisson/redisson.git app/redisson && cd app/redisson`
- checkout commit, `git checkout 96da883`
- apply logging patch, `git apply ../../ctest-logging.patch`
- check setup, `cd app/redisson/redisson && mvn surefire:test -Dtest=org.redisson.CommandHandlersTest#testEncoder`

## How to gernerate parameter mapping
Using bash script:
- run, `./identify_param.sh redisson`

