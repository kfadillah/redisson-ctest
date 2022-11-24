# Running Ctests

## Identify Parameters
The module is used to generate the pair of configuration parameters and test methods against Redisson

## Prerequisites
- Java 8
- Redis server (Only on Linux) [Link to download](https://redis.io/docs/getting-started/installation/install-redis-on-linux/)

## How to set up redisson
- clone redisson, `git clone https://github.com/redisson/redisson.git app/redisson && cd app/redisson`
- checkout commit, `git checkout 96da883`
- apply logging patch, `git apply ../../ctest-logging.patch`
- check setup, `cd app/redisson/redisson && mvn test -Dtest=org.redisson.CommandHandlersTest#testEncoder -DredisBinary=[REDIS SERVER PATH]`

## How to run ctest
Run single test with modified configuration value:

`python run_single_ctest.py TESTNAME MODIFIEDCONF`

Example command:

`python run_single_ctest.py org.redisson.RedissonDequeTest#testAddFirstOrigin threads=16`