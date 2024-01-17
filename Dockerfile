# You Should start from the tomcat version 8 image using the FROM command
# Take the war from the target and copy to webapps directory of the tomcat using the COPY command COPY SRC DEST

FROM tomcat:latest

LABEL maintainer="Dominic Doxen"

ADD ./target/name.war C:\Users\T7429DD\Desktop\apache-tomcat-9.0.69\apache-tomcat-9.0.69\webapps

EXPOSE 8088

CMD ["catalina.sh", "run"]
