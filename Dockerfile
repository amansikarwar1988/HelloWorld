#FROM openjdk:21-jdk-bullseye
#RUN apt-get update && apt-get install -y maven
#WORKDIR /app
#COPY . /app
#RUN mvn clean install
#COPY target/*.jar app.jar
#EXPOSE 8080
#ENTRYPOINT ["java", "-jar", "app.jar"]


# Stage 1: Build the JAR file
FROM openjdk:21-jdk-bullseye AS build
WORKDIR /app
RUN apt-get update && apt-get install -y maven
COPY . /app
RUN mvn clean install

# Stage 2: Create the final image with only the JAR file
FROM openjdk:21-jdk-bullseye
WORKDIR /app
COPY --from=build /app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
