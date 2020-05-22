FROM adoptopenjdk/openjdk11

WORKDIR /minecraft

ADD eula.txt /minecraft/eula.txt
ADD server.properties /minecraft/server.properties
ADD server.jar /minecraft/server.jar

EXPOSE 8080

RUN chgrp -R 0 /minecraft && chmod -R g=u /minecraft

CMD java -jar minecraft/server.jar
