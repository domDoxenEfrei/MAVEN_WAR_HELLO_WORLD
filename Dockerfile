# You Should start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy to webapps directory of the tomcat using the COPY command COPY SRC DEST

# Use the official Tomcat 9 image as the base image
FROM tomcat:9.0-jdk11

LABEL maintainer="ernest@mail.com"

# Set the working directory to the Tomcat webapps directory
WORKDIR $CATALINA_HOME/webapps

# Copy the WAR file from the target directory to the webapps directory
COPY target/spring-boot-deployment.war .

EXPOSE 8088

CMD ["catalina.sh","run"]
