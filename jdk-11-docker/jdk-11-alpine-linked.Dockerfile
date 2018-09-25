# Make a docker image with a jlink'ed JDK 11
FROM alpine:3.6

# Add jlink'ed JDK 11
ADD target/jdk-11-alpine-linked /opt/jdk-11

ENV JAVA_HOME=/opt/jdk-11
ENV PATH=$PATH:$JAVA_HOME/bin
CMD ["java", "-version"]
