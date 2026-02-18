FROM maven:3.9.5-eclipse-temurin-21 AS builder
WORKDIR /app  
 
# Copy Maven config and source code  
COPY pom.xml .  
COPY src ./src  
 
# Build the JAR (skip tests for faster builds)  
RUN mvn clean package -DskipTests  
 
# --------------------------  
# Stage 2: Run with JRE  
# --------------------------  
FROM eclipse-temurin:21-jre-alpine
WORKDIR /app  
 
# Copy JAR from Maven's target directory (Maven outputs here by default)  
COPY --from=builder /app/target/*.jar app.jar  
 
EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]