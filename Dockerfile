FROM openjdk:21-jdk
ARG JAR_FILE=build/libs/*.jar
ADD ${JAR_FILE} ecs-deploy.jar
ENTRYPOINT ["java","-jar","/ecs-deploy.jar"]