cd ..
mvn install
cd -
docker container rm herospecies
docker build --tag hoe3 .
docker run --publish 8082:8080 --name herospecies hoe3
