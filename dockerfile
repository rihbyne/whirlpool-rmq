FROM rabbitmq:3-management as whirlpool-rmq

COPY rabbitmq.conf /etc/rabbitmq
COPY definitions.json /etc/rabbitmq

RUN ls /etc/rabbitmq
RUN cat /etc/rabbitmq/rabbitmq.conf
