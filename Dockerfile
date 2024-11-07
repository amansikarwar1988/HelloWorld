# Use an official OpenJDK 17 runtime as a parent image
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the Spring Boot application's JAR file into the container
# Replace 'your-app.jar' with the actual JAR filename of your Spring Boot application
COPY target/your-app.jar app.jar

# Expose the port that your Spring Boot application uses (e.g., 8080)
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]