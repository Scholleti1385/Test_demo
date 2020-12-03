FROM scholleti/iiqrepo:iiqpoc1

#Install IIQ
COPY    identityiq.war /opt/tomcat/webapps/identityiq
RUN     cd /opt/tomcat/webapps/identityiq && \
        jar -xvf identityiq.war && \
	chmod +x /opt/tomcat/webapps/identityiq/WEB-INF/bin/iiq
COPY    iiq.properties /opt/tomcat/webapps/identityiq/WEB-INF/classes/iiq.properties
RUN     cat /opt/tomcat/webapps/identityiq/WEB-INF/classes/iiq.properties
RUN     chmod -R 777 /opt/tomcat/conf/


CMD ["catalina.sh", "run"]
