# Use Amazon Corretto JDK as base image
FROM amazoncorretto:21

# Set working directory inside container
WORKDIR /app

# Copy the built JAR file into the container
# (adjust target/*.jar to match your actual build output)
COPY target/BankingSystem-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

