# Use lightweight Java 17 runtime
FROM eclipse-temurin:17-jre-jammy

# Set working directory
WORKDIR /app

# Copy the generated jar file
COPY target/hiring-app-1.0.0.jar app.jar

# Expose application port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java","-jar","app.jar"]
