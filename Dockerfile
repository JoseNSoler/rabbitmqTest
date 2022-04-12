FROM tomcat:9.0.12
FROM openjdk:8-alpine

ADD target/springboot-rabbitmq-example-0.0.1-SNAPSHOT.jar app.jar
RUN sh -c 'touch /app.jar'

ENTRYPOINT ["java", "-jar", "/app.jar"]

