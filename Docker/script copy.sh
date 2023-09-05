javac -cp /path/to/tomcat/lib/servlet-api.jar -d WEB-INF/classes/AdamServlet.java
jar -cvf adam-web-app.war *
cp adam-web-app.war /path/to/tomcat/webapps/
