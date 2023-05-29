FROM ubuntu:latest
RUN apt update && apt install nginx -y
EXPOSE 80
CMD [ "service","start","nginx" ]