FROM eclipse-temurin:25-alpine
LABEL maintainer="tu_email@ejemplo.com"
WORKDIR /home
COPY target/*.jar spring-petclinic.jar
CMD ["java", "-jar", "spring-petclinic.jar"]
EXPOSE 8080