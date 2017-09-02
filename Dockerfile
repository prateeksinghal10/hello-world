FROM tomcat:8.0.46-jre8
#https://github.com/docker-library/tomcat

ENV CATALINA_HOME /usr/local/tomcat

ADD ./target/*.war $CATALINA_HOME/webapps/

RUN chgrp -R 0 $CATALINA_HOME \
  && chmod -R g+rwX $CATALINA_HOME

EXPOSE 8080
CMD ["catalina.sh", "run"]
