#
# BUILD STAGE
#
FROM maven:3.9-eclipse-temurin-17-alpine AS build  
EXPOSE 80
EXPOSE 443
COPY src /usr/src/app/src  
COPY pom.xml /usr/src/app  
RUN mvn -f /usr/src/app/pom.xml clean package

#
# PACKAGE STAGE
#
FROM openjdk:17-jdk-slim
COPY --from=build /usr/src/app/target/demo-0.0.1-SNAPSHOT.jar /usr/app/demo-0.0.1-SNAPSHOT.jar  

CMD ["java","-jar","/usr/app/demo-0.0.1-SNAPSHOT.jar"]  