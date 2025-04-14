FROM openjdk:8-alpine

# Required for starting application up.test the datagg
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar
# test/////////.///
WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
