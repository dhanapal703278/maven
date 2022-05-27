FROM tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT/
##/root/workspace/pipeline/webapp/target/webapp.war
##FRom this path copying of webapp.war 
##default it take upto /root/workspace/pipeline
COPY webapp/target/webapp.war /usr/local/tomcat/webapps/ROOT/  
RUN cd /usr/local/tomcat/webapps/ROOT && webapp.war && \
    rm -rf /usr/local/tomcat/webapps/ROOT/webapp.war
EXPOSE 8080
CMD ["catalina.sh", "run"]
