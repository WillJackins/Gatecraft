FROM adoptopenjdk/openjdk11

WORKDIR /
VOLUME / 

ADD eula.txt eula.txt
ADD server.properties server.properties
ADD server.jar server.jar

EXPOSE 8080

CMD java -jar server.jar
