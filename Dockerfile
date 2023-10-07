FROM amazoncorretto:11-alpine3.17
LABEL author="dileep"
LABEL organization="TechM"
RUN adduser -h /vedansh -s /bin/sh -D vedansh
USER vedansh
WORKDIR /petclinic
ADD https://referenceapplicationskhaja.s3.us-west-2.amazonaws.com/spring-petclinic-2.4.2.jar /petclinic/spring-petclinic-2.4.2.jar
EXPOSE 8080
CMD ["java", "-jar", "spring-petclinic-2.4.2.jar"]