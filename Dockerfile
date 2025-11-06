FROM eclipse-temurin:25-alpine
LABEL maintainer="tu_email@ejemplo.com"
COPY /target/*.jar /home/spring-petclinic.jar
CMD ["java", "-jar", "/home/spring-petclinic.jar"]
EXPOSE 8080