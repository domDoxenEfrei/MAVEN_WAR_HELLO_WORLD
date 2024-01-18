# You Should start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy to webapps directory of the tomcat using the COPY command COPY SRC DEST

# Use the official Tomcat 9 image as the base image
FROM tomcat:9.0-alpine

LABEL maintainer="ernest@mail.com"

# Copy the WAR file from the target directory to the webapps directory
ADD target/spring-boot-deployment.war /usr/local/tomcat/webapps

EXPOSE 8080

CMD ["catalina.sh","run"]
