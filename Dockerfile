# Stage 1: Build the JAR
FROM maven:3.9.6-amazoncorretto-21 AS build
WORKDIR /app
COPY . .
RUN mvn clean package -DskipTests

# Stage 2: Run the JAR
FROM amazoncorretto:21
WORKDIR /app
COPY --from=build /app/target/BankingSystem-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]


