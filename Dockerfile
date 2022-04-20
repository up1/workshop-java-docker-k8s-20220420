FROM openjdk:11.0.14.1-jre-slim-bullseye
WORKDIR /deploy
COPY target/*.jar ./app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]