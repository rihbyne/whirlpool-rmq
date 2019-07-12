### About whirlpool-rmq

This is rabbitMQ docker image for Whirlpool project derived from official rabbitmq image on docker hub.
It contains all the initial configuration required by dependent subsystems of whirlpool by passing
a custom `rabbitmq.conf` configuration to the container.

Create 2 vhost, 3 users which includes 1 administrator and other 2 policymakers, followed by creating
requisite exchanges, bindings, queues in appropriate vhost.

Quickly run the image of the shelf as it is packaged

`
docker run -p 5672:5672 -p 8080:15672 -td rihbyne/whirlpool-rmq
`

Building the image is doing using the following command

`
docker build --no-cache -t whirlpool-rmq .
`

Once built, run the following command to start the container

`
docker run --hostname whirlpoolrmq --name whirlpool-rmq -p 5672:5672 -p 8080:15672 -td whirlpool-rmq:latest
`
