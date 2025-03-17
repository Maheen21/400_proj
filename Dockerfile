# Use an official Tomcat base image
FROM tomcat:9-jdk11-openjdk

# Set the working directory
WORKDIR /usr/local/tomcat/webapps

# Copy the WAR file into the container
COPY build/libs/400_proj-1.0.0.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080
EXPOSE 8080

# Start Tomcat
CMD ["catalina.sh", "run"]
