#!/bin/sh
#Maintainer shailesh.pant@gmail.com
machineName=$1
status=$(docker-machine status $machineName)
if [[ $status == "Stopped" ]]
    then
        docker-machine start $machineName
        docker-machine env $machineName
fi
echo "Started VM " + $machineName
eval $(docker-machine env $machineName)
echo "You are now ready to run docker"
