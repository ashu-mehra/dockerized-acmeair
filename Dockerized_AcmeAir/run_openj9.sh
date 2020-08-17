# vlogs will appear in the directory that is mapped tp /output inside container
# The same directory will contain the shared class cache (SCC)
# The permission is set to root

docker run -it --rm -e TR_PrintCompStats=1 -e TR_PrintCompTime=1 -m=150M --cpuset-cpus="0" -v /tmp/output2:/output -p 9092:9090 -e JVM_ARGS="-Xjit:verbose={compilePerformance},vlog=vlog.txt" --name acmeair liberty-acmeair:latest
