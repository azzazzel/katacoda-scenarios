The gift card demo is a SpringBoot based application that consists of three modules: `command`, `query`, and `gui`, but for convenience, you can run them together as a single monolith.

### Run the application

▶️ Go to the terminal window and type `cd giftcard-demo`{{execute}} _(or just click on the command here)_ to move to the folder where you checked the application out.

▶️ Type `./mvnw spring-boot:run`{{execute}} _(or just click on the command here)_ to run the application as a single monolith.


It will take a while the first time you start the application because Maven needs to download all dependencies and build it.

### Use the application

Once it is running, you can [go to the gift card UI](https://[[HOST_SUBDOMAIN]]-8080-[[KATACODA_HOST]].environments.katacoda.com/) _(click on "try again" if you have open it before the application started)_.

▶️ In the `Issue single card` section, provide an ID _(for example `my-first-card`)_ and a value _(for example `100`)_, and click on `Submit` to generate a single gift card. The gist card should almost immediately appear in the table below.

### Behind the scenes

When you clicked `Submit` the following happened:
 - the `gui` module created an `IssueCommand` command and used `commandGateway` to send it to the application
 - the `gui` module also created a `FetchCardSummariesQuery` query and used `queryGateway` to send it to the application and subscribe for updates
 - the `GiftCard` aggregate in the `command` module received the command, processed it, and applied an `IssuedEvent`
 - the `CardSummaryProjection` listened for `IssuedEvent` events, received it, updated its state, and pushed the change to all clients expecting updates on their `FetchCardSummariesQuery` queries.

### Inspect the flow in Axon Server UI

As Axon Server is both your message router and your event store, you can use it to confirm the above story:

 - in the [Overview](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#overview) view, you can see that one application called `GiftCard-App-command,query,gui` is connected to the server. You can click on the name for details.

 - in the [Commands](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#commands) view, you can now see that one `IssueCommand` was dispatched to that application

 - in the [Search](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#query) view, you can click on the `Search` button and see that one `IssuedEvent` was applied by `my-first-card` _(or whatever ID you provided)_ instance of the `GiftCard` aggregate

- finally, in the [Queries](https://[[HOST_SUBDOMAIN]]-8024-[[KATACODA_HOST]].environments.katacoda.com/#queries) view, you can see the number of queries issued and which application they were dispatched to
