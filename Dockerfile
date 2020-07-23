From ubuntu

MAINTAINER Aarju Sinha/aarju.sinha024@gmail.com

RUN apt-get update && \
    apt-get install -y python3 \
	apt-get install -y openjdk-8-jdk && \

 
CMD /bin/echo "Hello! Aarju"

docker images
