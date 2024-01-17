# You Should start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy to webapps directory of the tomcat using the COPY command COPY SRC DEST

# Use the official Tomcat 8 image as the base image
FROM tomcat:8

LABEL maintainer="ernest@mail.com"
ADD target/spring-boot-deployment.war /usr/local/tomcat/webapps/
EXPOSE 8088
CMD ["catalina.sh", "run"]
