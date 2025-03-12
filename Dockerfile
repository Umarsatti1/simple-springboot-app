# Use OpenJDK 17 on Alpine Linux as the base image
FROM eclipse-temurin:17-jre-alpine

# Define the path to the JAR file
ARG artifact=target/spring-boot-app-0.0.1-SNAPSHOT.jar

# Set the working directory inside the container
WORKDIR /opt/app

# Copy the JAR file into the container
COPY ${artifact} app.jar

# Specify the command to run the JAR file
ENTRYPOINT ["java", "-jar", "app.jar"]