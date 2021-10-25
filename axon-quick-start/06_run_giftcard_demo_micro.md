First you need to stop the monolith app.

▶️  Go to the terminal window and press `^C`{{execute ctrl-seq T1}}. Give it some time to shutdown cleanly.

### Start the command side

You can use a SpringBoot profile called `command` which contains only the command side components

▶️ Open a new terminal window ` `{{execute T2}}

▶️ Type

```java \
-Dspring.profiles.active=command \
-jar ~/giftcard-demo/target/giftcard-demo-4.5.jar
```{{execute T2}}

to start the command side as stand alone micro-service

### Start the query side

You can use a SpringBoot profile called `query` which contains only the query side components

▶️ Open a new terminal window ` `{{execute T3}}

▶️ Type

```java \
-Dspring.profiles.active=query \
-jar ~/giftcard-demo/target/giftcard-demo-4.5.jar
```{{execute T3}}

to start the query side as stand alone micro-service

### Start the user interface

You can use a SpringBoot profile called `gui` which contains only the web UI components

▶️ Open a new terminal window ` `{{execute T4}}

▶️ Type

```java \
-Dspring.profiles.active=gui \
-jar ~/giftcard-demo/target/giftcard-demo-4.5.jar
```{{execute T4}}

to start the the user interface as stand alone micro-service

### Use the application

Once all services are running, you can again [go to the gift card UI](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/) and use it much like you did in the previous step.

> NOTE that the gift card you issued in the monolith app is still there. That is because the system's state is preserved in the event store (Axon Server) in the form of past events.

Feel free to issue more and redeem some gift cards.
### Inspect components and messages in Axon Server UI

You can again Axon Server to see what messages are dispatched to what components:

- in the [Overview](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#overview) view, you can see that now three applications are connected to the server:
    - `GiftCard-App-command`
    - `GiftCard-App-query`
    - `GiftCard-App-gui`

- in the [Commands](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#commands) view, you can see that commands are now dispatched to the `GiftCard-App-command` application

- in the [Queries](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#queries) view, you can see queries are now dispatched to the `GiftCard-App-query` application

- in the [Search](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#query) view, you can search for and filter events that have occurred in the system.

    > NOTE that you can find the `IssuedEvent` about `my-first-card` _(or whatever ID you provided)_  from the previous step there.
