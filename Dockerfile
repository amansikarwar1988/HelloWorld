# Use a Debian-based OpenJDK 21 image
FROM openjdk:21-jdk-bullseye

# Use apt-get to install Maven
RUN apt-get update && apt-get install -y maven

# Set the working directory in the container
WORKDIR /app

# Copy your local project files into the container
COPY . /app

# Build the project using Maven (if applicable)
RUN mvn clean install

COPY target/*.jar helloworld.jar

# Expose the port that your Spring Boot application uses (e.g., 8080)
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "helloworld.jar"]
