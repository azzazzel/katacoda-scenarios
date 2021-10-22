> _Before you read the rest, please click on the IDE tab on the right to open the gift card demo code in an editor (it takes some time to load the IDE)_.

With Axon you build even-driven, location-transparent applications. To efficiently do this you need the following pieces:

### Messages

Messages are how components talk to each other. There are three types of messages:

- `Commands` - an instruction to perform a task (apply a change in the domain)
- `Events` - a notification that something has happened
- `Queries` - a request for information

▶️ Open `src/main/java/io/axoniq/demo/giftcard/api/api.kt`{{open}} to see the definition of all messages (`commands`, `events`, `queries`) used in within the system. The demo uses Kotlin file for convenience. In Java, every `data clas ...` line would have been a separate file.

### Command model

A collective name for the components responsible for processing `commands`, applying changes in the domain, and emitting notifications via `events`. Using a DDD lingo, this is where your `Aggregates`, `Entities`, `Value Objects`, etc., belong.

▶️ Open `src/main/java/io/axoniq/demo/giftcard/command/GiftCard.java`{{open}} to see the only aggregate the demo has. Notice the `@CommandHandler` methods. This is where `commands` are validated, and on success, `events` are applied.
Also, notice that this aggregate uses the `@EventSourcingHandler` methods to receive its own events.

### Query model

A collective name for the components responsible for building `projections` of the system's state based on the `events` they receive, which they use to respond to `queries`.

▶️ Open `src/main/java/io/axoniq/demo/giftcard/query/CardSummaryProjection.java`{{open}} to see the only projection the demo has. Notice the `@EventHandler` methods. Those listen for `events` and (re)build the `projection`. Also, notice the `@QueryHandler` methods used to receive and respond to requests for information.

### Clients

A collective name for the components allowing 3rd parties to interact with the system. It could be GUIs, REST services, workflow tasks, etc.

▶️ Open `src/main/java/io/axoniq/demo/giftcard/gui/GiftCardUI.java`{{open}} to see how this client (responsible for the UI) uses `commandGateway` and `queryGateway` to interact with the system via `commands` and `queries`.


