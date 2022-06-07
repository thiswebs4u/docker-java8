#
# Oracle Java 8 Dockerfile
#
# https://github.com/dockerfile/java
# https://github.com/dockerfile/java/tree/master/oracle-java8
#

# Pull base image.
FROM ubuntu:14.04

COPY ./source/jdk-8u251-linux-x64.tar.gz .
RUN tar -zxvf jdk-8u251-linux-x64.tar.gz -C /opt
RUN rm jdk-8u251-linux-x64.tar.gz

# Define working directory.
#WORKDIR /data

# Define commonly used JAVA_HOME variable
ENV JAVA_HOME /opt/jdk1.8.0_251
ENV PATH $JAVA_HOME/bin:$PATH

# Define default command.
CMD ["bash"]
