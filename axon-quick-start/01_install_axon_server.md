Axon Server is the flagship product of AxonIQ. In a nutshell, it is

- a super-efficient **Event Store** _(an append-only database for events)_
- a **Messaging Routing Platform** specializing in handling Commands, Queries, and Events

There are two ways to install and use Axon Server:

- **Executable JAR** - Axon Server is distributed as a standalone executable JAR file that can be run anywhere Java runs. For more information see [Local Installation documentation](https://docs.axoniq.io/reference-guide/axon-server/installation/local-installation/axon-server-se)

- **Docker container** - AxonIQ also provides official Docker images that can be used on their own or with Compose, Kubernetes, Cloud-Foundry, OpenShift, etc. For more information see [Docker / K8s Installation documentation](https://docs.axoniq.io/reference-guide/axon-server/installation/docker-k8s/axon-server-se)

## Exercise

In this learning scenario, we'll use the Docker image.

▶️ Go to the terminal window and type `docker run -d --name axonserver -p 8024:8024 -p 8124:8124 axoniq/axonserver`{{execute T1}} _(or just click on the command here to execute it in the terminal)_

The above command may take a while. It will
 - download the latest Axon Server image _(if it's not downloaded already)_
 - create a container named `axonserver`
 - start the container in the background
 - expose ports `8024` and `8124` for clients to connect

▶️ Run `docker logs -f axonserver`{{execute T1}} to watch the server logs. When you see the `Started AxonServer in NN.NNN seconds` message, your server is up and ready. You can now move to the next step.