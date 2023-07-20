FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY ./target/*.jar /app.jar
CMD ["java", "-jar", "app.jar"]

FROM openjdk:8-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the ./target directory on the host to /app/app.jar inside the container
COPY ./target/*.jar /app/app.jar

# Add the following lines to mount the ./target directory on the host to /app/target inside the container
VOLUME /app/target

# Set the command to run when the container starts
CMD ["java", "-jar", "app.jar"]
