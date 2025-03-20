### Stop and remove the Docker Images
docker stop $(docker ps -a -q)
docker rmi $(docker image ls | egrep "^mongo*" | awk '{print $3}') --force
docker system prune -af --volumes 

# remove the custom network bridge.
docker network remove mongoCluster
