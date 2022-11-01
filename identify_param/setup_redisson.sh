[ ! -d "app/cassandra" ] && git clone https://github.com/redisson/redisson.git app/redisson
cd app/redisson
git checkout 34bcddc
#git apply ../../ctest-logging.patch