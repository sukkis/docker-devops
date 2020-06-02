FROM openjdk:8
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN ./mvnw package
CMD java -jar ./target/docker-example-1.1.3.jar
