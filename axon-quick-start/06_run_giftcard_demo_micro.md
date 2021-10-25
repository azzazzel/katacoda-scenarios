First you need to stop the monolith app.

▶️  Go to the terminal window and press `^C`{{execute ctrl-seq T1}}. Give it some time to shutdown cleanly.

### Start the command side

You can use a SpringBoot profile called `command` which contains only the command side components

▶️ Open a `new terminal`{{execute T2}} window

▶️ Type `java -Dspring.profiles.active=command -jar ~/giftcard-demo/target/giftcard-demo-4.5.jar `{{execute T2}} to start the command side as micro-service

### Start the query side

You can use a SpringBoot profile called `query` which contains only the command side components

▶️ Open a `new terminal`{{execute T3}} window

▶️ Type `java -Dspring.profiles.active=query -jar ~/giftcard-demo/target/giftcard-demo-4.5.jar `{{execute T3}} to start the command side as micro-service

### Start the command side

You can use a SpringBoot profile called `gui` which contains only the web UI components

▶️ Open a `new terminal`{{execute T4}} window

▶️ Type `java -Dspring.profiles.active=gui -jar ~/giftcard-demo/target/giftcard-demo-4.5.jar `{{execute T4}} to start the command side as micro-service

### Use the application

Once all serviced are running, you can again [go to the gift card UI](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/) and use it much like you did in the previous step. Feel free to issue and redeem some gift cards.
### Inspect components and messages in Axon Server UI

You can again Axon Server to see what messages are dispatched to what components:

 - in the [Overview](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#overview) view, you can see that now three applications are connected to the server. You can click on the names for details.

 - in the [Commands](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#commands) view, you can now see that commands are now dispatched to that `command` application

- in the [Queries](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#queries) view, you can see queries are dispatched to the `query` application
