FROM mcr.microsoft.com/openjdk/jdk:16-ubuntu
RUN mkdir /opt/minecraft
#curl -LO https://download.getbukkit.org/spigot/spigot-1.17.jar
COPY spigot-1.17.jar /opt/minecraft
COPY eula.txt /opt/minecraft
WORKDIR /opt/minecraft
#java -Xms#G -Xmx#G -XX:+UseG1GC -jar spigot.jar nogui
CMD ["java", "-Xms1G", "-Xmx1G", "-XX:+UseG1GC", "-jar", "spigot-1.17.jar","nogui"]
