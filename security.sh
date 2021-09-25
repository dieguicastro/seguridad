
echo **************************************************************
echo Generate JAR
echo **************************************************************
mvn clean package -DskipTests
echo **************************************************************
echo BUILD AND PUSH Docker
echo **************************************************************
docker stop mssecurityv1
docker rm  mssecurityv1
echo **************************************************************
docker  build -t antony0618/ms-security-v1 .
docker push  antony0618/ms-security-v1
echo **************************************************************
echo run image 
docker run -p 8010:8010 --name mssecurityv1 --network aforo255 -d antony0618/ms-security-v1
echo *************************************************************
echo End Process
echo *************************************************************