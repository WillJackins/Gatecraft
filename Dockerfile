FROM adoptopenjdk/openjdk11

WORKDIR /

ADD eula.txt eula.txt
ADD server.properties server.properties
ADD server.jar server.jar

EXPOSE 8080

RUN chgrp -R 0 . && chmod -R g=u .

CMD java -jar server.jar
