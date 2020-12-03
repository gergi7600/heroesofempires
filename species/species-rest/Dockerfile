FROM openjdk:jre-alpine

ADD ./target/species-thorntail.jar /opt/wildfly-swarm.jar

EXPOSE 8081
ENTRYPOINT ["java", "-jar", "/opt/wildfly-swarm.jar", "-Dswarm.ds.name=hoeds", "-Dswarm.ds.username=hoe", "-Dswarm.ds.password=Aa1.123456", "-Dswarm.ds.connection.url=jdbc:mysql://172.17.0.1:3306/hoe?useSSL=false", "-Djava.net.preferIPv4Stack=true"]
