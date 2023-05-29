FROM ubuntu:latest
RUN apt update && apt install apache2 -y
EXPOSE 80
CMD [ "service","apache2","start" ]