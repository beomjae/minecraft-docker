FROM ubuntu:latest
RUN apt update
RUN apt-get install -y software-properties-common 
RUN apt update
RUN apt-get install -y openjdk-8-jdk-headless
RUN mkdir /data
WORKDIR /data
ADD server.jar /data/
ADD eula.txt /data/
ADD server.properties /data/
ADD entrypoint.sh /data/entrypoint.sh
RUN chmod +x /data/entrypoint.sh
CMD ./entrypoint.sh

EXPOSE 25565