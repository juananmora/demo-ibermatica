FROM juananmora/tomcat

LABEL maintainer="jamora@minsait.com"

ADD ./target/ibermatica.war /usr/local/tomcat/webapps/

EXPOSE 8080

CMD ["catalina.sh", "run"]
