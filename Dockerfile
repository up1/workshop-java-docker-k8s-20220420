FROM openjdk:11.0.14.1-jre-slim-bullseye
WORKDIR /deploy
COPY target/*.jar ./app.jar
COPY wait/wait-for-it.sh ./wait-for-it.sh
RUN chmod a+x ./wait-for-it.sh
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]