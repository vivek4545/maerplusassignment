FROM openjdk

WORKDIR /app
COPY  my-app/target/my-app-1.0-SNAPSHOT.jar my-app.jar

ENTRYPOINT ["java", "-jar", "myapp.jar"]
