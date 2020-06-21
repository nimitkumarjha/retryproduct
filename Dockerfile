FROM openjdk:8-jdk-alpine
VOLUME /tmp
COPY /target/Productservice_final-0.0.1-SNAPSHOT.jar /usr/app/
WORKDIR /usr/app
EXPOSE 2300
ENV JAVA_OPTS=""
RUN sh -c "touch Productservice_final-0.0.1-SNAPSHOT.jar"
ENTRYPOINT [ "java", "-jar", "Productservice_final-0.0.1-SNAPSHOT.jar" ]
