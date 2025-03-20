# docker-EA-RS
Self setup docker with three node replica set running EA

## Preparation (only once)
1. Make sure your /etc/hosts file have this line entry. 
-  127.0.0.1	localhost mongo1 mongo2 mongo3

2. Make sure you have the "Docker Desktop" running first

3. Make sure these script files are executable. Command to make all '.sh' files executable.
-   chmod +x *.sh

## To execute
- runEA-RS_Docker.sh

## The script explanation
1. It will create a network bridge call 'mongoCluster'
2. It wil spin up three nodes called mongo1, mongo2, mongo3
3. It will initiate and initialize replicaset set call 'myReplicaSet'
4. It will setup a first user called 'root' and password is 'password'
5. Then it will out the current replica running status and configuration

## To cLean up... Be careful here!!!
- This will stop all the mongoX docker,
- Remove the docker images
- Remove all teh image volumes.
