docker ps
echo $(docker ps | grep myapptest | awk '{ print $1 }')
containerId=$(docker ps | grep myapptest | awk '{ print $1 }')
echo $(docker ps | grep ${containerId})
# docker cp ${containerId}:/App/hello.txt ./Artifact