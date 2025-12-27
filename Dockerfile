FROM public.ecr.aws/lambda/java:11

WORKDIR /app

COPY target/app.jar app.jar

CMD ["com.example.demo.DemoApplication::handleRequest"]
