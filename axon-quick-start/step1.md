 
## Run Axon Server

Axon Server is the flagship product of AxonIQ. In a nutshell it is 

- a super efficient **Event Store** _(an append only database for events)_
- a **Messaging Platform** specializing in handling Commands, Queries and Events 

### Install options

#### Executable JAR
Axon Server is distributed as standalone executable JAR file that can be run anywhere Java runs. For more information on that please see the [Local Installation documentation](https://docs.axoniq.io/reference-guide/axon-server/installation/local-installation/axon-server-se)  

#### Docker container
AxonIQ also provides official Docker images of Axon Server that can be used on their own, with Docker Compose, Kubernetes, Cloud-Foundry, OpenShift, etc
For more information on that please see the [Docker / K8s Installation documentation](https://docs.axoniq.io/reference-guide/axon-server/installation/docker-k8s/axon-server-se)  

## Exercise 

For the purpose of this learning scenario we'll use the Docker image. Go to the terminal window and type `docker run -d --name axonserver -p 8024:8024 -p 8124:8124 axoniq/axonserver`{{execute}} _(or just click on the command here)_