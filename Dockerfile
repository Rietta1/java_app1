FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY target/kubernetes-configmap-reload-0.0.1-SNAPSHOT.jar  /app.jar
CMD ["java", "-jar", "app.jar"]

