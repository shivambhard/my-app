FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY target/plexus-archiver-2.1.jar $PROJECT_HOME/plexus-archiver-2.1.jar

WORKDIR $PROJECT_HOME

CMD ["java" ,"-jar","./plexus-archiver-2.1.jar"]
