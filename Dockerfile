FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/jb-hello-world-maven-0.1.0.jar hello-docker-app.jar
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /hello-docker-app.jar" ]