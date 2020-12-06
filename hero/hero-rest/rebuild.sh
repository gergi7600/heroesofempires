cd ..
mvn clean install -U
cd -
docker container rm hero
docker build --tag hoe .
docker run --publish 8080:8080 --name hero hoe
