From ubuntu

MAINTAINER Aarju Sinha/aarju.sinha024@gmail.com

RUN apt-get update && \
	apt-get install -y openjdk-8-jdk && \
	apt-get clean && \
	rm -rf /var/lib/apt/lists/* && \
	rm -rf /var/cache/oracle-jdk8-installer;
	
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
RUN export JAVA_HOME
	
RUN apt-get update \
  && apt-get install -y python3 \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  
ENTRYPOINT ["python3"]
 
CMD /bin/echo "Hello! Aarju"

docker images
