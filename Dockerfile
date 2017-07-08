FROM coolersport/jetty

EXPOSE 8080

ADD http://central.maven.org/maven2/org/cloudfoundry/identity/cloudfoundry-identity-uaa/4.4.0/cloudfoundry-identity-uaa-4.4.0.war /opt/jetty/webapps/root.war

WORKDIR /opt/jetty

CMD ["java", "-jar", "start.jar",  "jetty.home=/opt/jetty"]
