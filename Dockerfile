# Build stage
FROM maven:3.9.6-eclipse-temurin-17 AS build
COPY . .
RUN mvn clean package -DskipTests

# Run stage
FROM eclipse-temurin:17-jre
COPY --from=build /target/*.jar app.jar
EXPOSE 8080
# Restrict memory for Render's free tier
ENTRYPOINT ["java", "-Xmx300m", "-jar", "/app.jar"]