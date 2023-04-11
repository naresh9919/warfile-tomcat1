FROM openjdk:11.0
EXPOSE 8080
ADD target/webapp.war webapp.war
ENTRYPOINT ["java","-war","/webapp.war"]
