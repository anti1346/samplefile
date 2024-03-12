FROM openjdk:11 

ARG JAR_FILE=build/libs/samplefile-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} app.jar 

VOLUME /tmp

EXPOSE 8081

ENTRYPOINT ["java","-jar","/app.jar"]
