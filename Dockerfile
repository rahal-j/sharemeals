# Use Eclipse Temurin JDK for Java 21
FROM eclipse-temurin:21-jdk

# Set working directory
WORKDIR /app

# Copy Maven build file & dependencies
COPY . .

# Build your app using Maven (skip tests to speed up)
RUN ./mvnw clean install -DskipTests

# Run the app
CMD ["java", "-jar", "target/sharemeals.war"]
