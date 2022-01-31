FROM openjdk:11.0.13-slim-buster
RUN apt-get update \
    && apt-get install openssl
EXPOSE 9091
ARG JAR_FILE=build/libs/spring-boot-docker-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar","--server.port=9091"]