FROM ubuntu
MAINTAINER mrudulapolavaram

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;
	
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/

RUN mkdir /app
COPY ./target/student-services-security-0.0.1-SNAPSHOT.war  /app
WORKDIR /app
#RUN sh -c "touch student-services-security-0.0.1-SNAPSHOT.war'
ENTRYPOINT [ "java", "-jar","student-services-security-0.0.1-SNAPSHOT.war" ]
	
EXPOSE 8080

