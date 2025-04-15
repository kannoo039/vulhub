FROM maven:3.6.3-openjdk-8 as builder
WORKDIR /app/app
COPY ./ /app/
RUN mvn package

FROM openjdk:8-jre-alpine
WORKDIR /app
COPY --from=builder /app/app/target/app-1.0-SNAPSHOT.jar /app/app.jar
EXPOSE 8080
CMD java -jar /app/app.jar & tail -f /dev/null
