FROM ubuntu:latest
RUN apt update && apt install openjdk-17-jdk -y && apt install maven -y && apt install git -y && \
    git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic && \
    mvn package
WORKDIR  target
EXPOSE 8080
CMD ["java" , "-jar" , "spring-petclinic-3.0.0-SNAPSHOT.jar"]