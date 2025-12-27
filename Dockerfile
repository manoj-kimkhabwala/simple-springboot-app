FROM public.ecr.aws/lambda/java:11

# Install Java runtime for non-Lambda usage
RUN yum install -y java-11-amazon-corretto

WORKDIR /app

# Copy the built JAR
COPY app.jar app.jar

# Expose port 8080
EXPOSE 8080

# Run the Spring Boot app
ENTRYPOINT ["java", "-jar", "app.jar"]
