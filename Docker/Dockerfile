# Use an official Tomcat runtime as the base image
FROM tomcat:9.0

# Set environment variables for Tomcat (optional)
ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

# Create a directory for your application
WORKDIR $CATALINA_HOME/webapps

# Copy your web application (WAR file) into the Tomcat webapps directory
COPY adam-web-app.war .

# Expose the default Tomcat port (8080)
EXPOSE 8080

# Start Tomcat when the container runs
CMD ["catalina.sh", "run"]
