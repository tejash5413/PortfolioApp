FROM openjdk:17-jdk-alpine
EXPOSE 8070
COPY target/portfolio.app-1.0-SNAPSHOT.jar /usr/src/app/app.jar
WORKDIR /usr/src/app
CMD ["java", "-jar", "app.jar"]
