FROM tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT/
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT/ 
RUN cd /usr/local/tomcat/webapps/ROOT && webapp.war && \
    rm -rf /usr/local/tomcat/webapps/ROOT/webapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
