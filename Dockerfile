FROM rabbitmq:3.8.0-management

# Copy RabbitMQ configuration
COPY rabbitmq.conf /etc/rabbitmq/

# Set RabbitMQ node name
ENV RABBITMQ_NODENAME=rabbit@localhost

# Ensure permissions for RabbitMQ configuration
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.conf

# Switch to RabbitMQ user
USER rabbitmq:rabbitmq
