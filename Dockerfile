FROM rabbitmq:latest

RUN rabbitmq-plugins enable --offline rabbitmq_management && \
    rabbitmq-plugins enable --offline rabbitmq_mqtt && \
    rabbitmq-plugins enable --offline rabbitmq_web_mqtt && \
    rabbitmq-plugins enable --offline rabbitmq_stomp && \
    rabbitmq-plugins enable --offline rabbitmq_web_stomp && \
    rm -f /etc/rabbitmq/conf.d/20-management_agent.disable_metrics_collector.conf

EXPOSE 1883 8883 15672 15674 15675 61613