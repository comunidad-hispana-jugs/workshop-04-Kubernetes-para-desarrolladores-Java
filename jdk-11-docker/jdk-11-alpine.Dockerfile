# The JDK 11 development image for building
FROM alpine:3.6

# Add the musl-based JDK 11 distribution
# RUN apk update \
#  && apk add wget
#RUN mkdir /opt
#RUN wget -q https://download.java.net/java/early_access/alpine/16/binaries/openjdk-11-ea+16_linux-x64-musl_bin.tar.gz
ADD openjdk-11-ea+16_linux-x64-musl_bin.tar.gz /opt
#RUN tar -x -f serverjre-9-ea+181_linux-x64-musl_bin.tar.gz -C /opt
#RUN rm serverjre-9-ea+181_linux-x64-musl_bin.tar.gz

# Add maven
# RUN wget -q http://apache.claz.org/maven/maven-3/3.5.3/binaries/apache-maven-3.5.3-bin.tar.gz
# RUN tar -x -f apache-maven-3.5.3-bin.tar.gz -C /opt && rm apache-maven-3.5.3-bin.tar.gz
ADD apache-maven-3.5.3-bin.tar.gz /opt

# Set up env variables
ENV JAVA_HOME=/opt/jdk-11
ENV MAVEN_HOME=/opt/apache-maven-3.5.3
ENV PATH=$PATH:$JAVA_HOME/bin:$MAVEN_HOME/bin
CMD ["java", "-version"]
