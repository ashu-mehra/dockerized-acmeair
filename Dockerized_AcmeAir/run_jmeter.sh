#!/bin/bash
# The last parameter in the line below is the IP of the machine where liberty runs

docker run --cpuset-cpus='0-1' --rm --net=host -v /home/mpirvu/JITaaS_Docker/Dockerized_AcmeAir/jmeter_output:/output -e JTHREADS=15 -e JDURATION=60 -e JPORT=9092 --name jmeter1 jmeter_acmeair localhost

