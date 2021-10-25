The [giftcard-demo](https://github.com/AxonIQ/giftcard-demo) demo application focuses on a simple domain - gift cards. Essentially, there are just two events in the life cycle of a gift card:

- It gets issued with some amount of money stored in it.
- It gets redeemed. This event can occur only once for all the monetary value stored on the gift card or many times for smaller parts of it.

The application comes with a simple web UI to issue and redeem gift cards.

## Exercise

▶️  Go to the terminal window and stop listing the docker logs by pressing `^C`{{execute T1 ctrl-seq}}

▶️  Clone the `giftcard-demo` app source code by typing `git clone https://github.com/AxonIQ/giftcard-demo.git`{{execute T1}}

---

In the next step we'll explore the code of the application. Meanwhile let's start the build so it can download the dependencies in the background.

▶️ Go to the terminal window and type `cd giftcard-demo`{{execute T1}}

▶️ Type `./mvnw package`{{execute T1}} to build the application from the source code you just downloaded.
