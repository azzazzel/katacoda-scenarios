The [giftcard-demo](https://github.com/AxonIQ/giftcard-demo) demo application focuses on a simple domain - gift cards. Essentially, there are just two events in the life cycle of a gift card:

- It gets issued with some amount of money stored in it.
- It gets redeemed. This event can occur only once for all the monetary value stored on the gift card or many times for smaller parts of it.

The application comes with a simple web UI to issue and redeem gift cards.

## Exercise

▶️  Go to the terminal window and stop listing the docker logs by pressing `^C`{{execute ctrl-seq}}

▶️  Clone the `giftcard-demo` app source code by typing `git clone https://github.com/AxonIQ/giftcard-demo.git`{{execute}}

