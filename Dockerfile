FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY target/hiring-app-1.0.0.jar hiring-app.jar
ENTRYPOINT ["java","-jar","hiring-app.jar"]
