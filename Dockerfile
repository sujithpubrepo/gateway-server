FROM adoptopenjdk/maven-openjdk11
COPY target/gateway-server-0.0.1-SNAPSHOT.jar gateway-server.jar
EXPOSE 8071:8071
RUN apt-get update
RUN apt-get install -y gcc
RUN apt-get install -y curl
ENTRYPOINT ["java","-jar","gateway-server.jar"]