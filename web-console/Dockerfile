FROM tomcat:8.0.53-jre8
WORKDIR /usr/local/tomcat/webapps/ROOT

ENV managerServicesUrl http://product-manager:8080

ENV consoleBackstageHost http://scene-init:8080

ENV picturePath /opt/picture-vol

RUN rm -rf /usr/local/tomcat/webapps/ROOT/*

COPY web-console/target/web-console $WORKDIR
RUN sed -i "2i /usr/local/tomcat/webapps/ROOT/initDemo.sh" /usr/local/tomcat/bin/catalina.sh
RUN chmod 777 /usr/local/tomcat/webapps/ROOT/initDemo.sh
CMD ["catalina.sh", "run"]
