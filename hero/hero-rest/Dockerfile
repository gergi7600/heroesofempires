#FROM ubuntu
FROM openjdk:jre-alpine
ADD ./target/hero-thorntail.jar /opt/wildfly-swarm.jar

#RUN apt-get update
#RUN apt-get -y install software-properties-common

#RUN apt-get -y install openjdk-8-jre

#RUN apt-get -qq update

#RUN echo "mysql-server mysql-server/root_password password root" | debconf-set-selections
#RUN echo "mysql-server mysql-server/root_password_again password root" | debconf-set-selections
#RUN apt-get -y install mysql-server nmap
#RUN sed -i -e"s/^bind-address\s*=\s*127.0.0.1/bind-address = 0.0.0.0/" /etc/mysql/mysql.conf.d/mysqld.cnf
#RUN usermod -d /var/lib/mysql/ mysql
#EXPOSE 3306
EXPOSE 8080
#CMD ["mysqld"]

ENTRYPOINT ["java", "-jar", "/opt/wildfly-swarm.jar", "-Dswarm.ds.name=hoeds", "-Dswarm.ds.username=hoe", "-Dswarm.ds.password=Aa1.123456", "-Dswarm.ds.connection.url=jdbc:mysql://172.17.0.1:3306/hoe?useSSL=false", "-Djava.net.preferIPv4Stack=true", "&"]
