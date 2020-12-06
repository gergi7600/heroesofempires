cd ..
mvn install
cd -
docker container rm species
docker build --tag hoe2 .
docker run --publish 8081:8080 --name species hoe2
