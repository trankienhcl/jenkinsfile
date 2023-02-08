FROM tomcat:8.0-alpine
LABEL maintainer="deepak@softwareyoga.com"

ADD index.html /usr/local/tomcat/webapps/

EXPOSE 8080
CMD ["catalina.sh", "run"]
