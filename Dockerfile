# Start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy it to the webapps directory of Tomcat using the COPY command

FROM tomcat:latest

LABEL maintainer="Dominic Doxen"

COPY target/spring-boot-deployment.war /usr/local/tomcat/webapps/

EXPOSE 8088

CMD ["catalina.sh", "run"]
