FROM java:8-alpine
MAINTAINER Your Name <you@example.com>

ADD target/paperboy-0.0.1-SNAPSHOT-standalone.jar /paperboy/app.jar

EXPOSE 8080

CMD ["java", "-jar", "/paperboy/app.jar"]
