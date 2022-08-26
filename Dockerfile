FROM openjdk:17-ea-11-jdk-slim
VOLUME /tmp
COPY target/apigateway-1.0.jar ApiGateway.jar
ENTRYPOINT ["java", "-jar", "ApiGateway.jar"]

# docker run -d -p 8000:8000 --network ecommerce-network `
#     --name apigateway-service `
#     -e "spring.cloud.config.uri=http://config-service:8888" `
#     -e "spring.rabbitmq.host=rabbitmq" `
#     -e "eureka.client.serviceUrl.defaultZone=http://discovery-service:8761/eureka/" `
#     mmsnow/apigateway-service:1.0