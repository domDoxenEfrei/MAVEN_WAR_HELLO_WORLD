# You Should start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy to webapps directory of the tomcat using the COPY command COPY SRC DEST

# Use the official Tomcat 8 image as the base image
FROM tomcat:8

# Set the working directory to the Tomcat webapps directory
WORKDIR $CATALINA_HOME/webapps

# Copy the WAR file from the target directory to the webapps directory
COPY target/your-web-app.war .

# Expose the default Tomcat port (8088)
EXPOSE 8088

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
