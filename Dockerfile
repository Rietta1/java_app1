FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY /var/lib/jenkins/workspace/java_app@2/target  /app.jar
CMD ["java", "-jar", "app.jar"]

