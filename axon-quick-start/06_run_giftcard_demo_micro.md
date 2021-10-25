▶️  Go to the terminal window and stop the monolith app by pressing `^C`{{execute ctrl-seq T1}}

▶️  Open new terminal window and type `java -Dspring.profiles.active=command -jar ~/giftcard-demo/target/giftcard-demo-4.5.jar `{{execute T2}} to start the command side as micro-service

▶️  Open new terminal window and type `java -Dspring.profiles.active=query -jar ~/giftcard-demo/target/giftcard-demo-4.5.jar `{{execute T3}} to start the command side as micro-service

▶️  Open new terminal window and type `java -Dspring.profiles.active=gui -jar ~/giftcard-demo/target/giftcard-demo-4.5.jar `{{execute T4}} to start the command side as micro-service
