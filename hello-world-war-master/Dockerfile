FROM tomcat:8.0.49-jre8

MAINTAINER Ankur Kashyap <ankur.kashyap@irissoftware.com>

#Adding Java8
#ADD jdk-8u161-linux-x64.rpm /tmp/
#RUN rpm -ivh /tmp/jdk-8u161-linux-x64.rpm
#RUN rm /tmp/jdk-8u161-linux-x64.rpm

#Prepare Environment
#ENV JAVA_VERSION 8u161
#ENV BUILD_VERSION b13
#ENV JAVA_HOME /usr/java/jdk.1.8.0_161
#ENV PATH $PATH:/usr/java/jdk.1.8.0_161/jre/bin:$JAVA_HOME/bin

#Download War artifacts
ADD hello-world-war-1.0.0.war /usr/local/tomcat/webappps/

# Service-Id mapping
COPY entrypoint.sh /usr/local/bin
COPY setRuntimeUser.sh /usr/local/bin
RUN chmod -R +x /usr/local/bin
ENTRYPOINT ["entrypoint.sh]	 

