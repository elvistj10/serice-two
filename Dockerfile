FROM java:8
VOLUME /tmp
ADD two-0.0.1-SNAPSHOT.jar service-two.jar
RUN bash -c 'touch /service-two.jar'
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/service-two.jar"]