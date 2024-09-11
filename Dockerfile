FROM openjdk:8-jdk-alpine

# 指定工作目录
WORKDIR /app

# 将 jar 包添加到工作目录，比如 target/yyoj-backend-user-service-0.0.1-SNAPSHOT.jar
ADD target/yubi-backend-0.0.1-SNAPSHOT.jar .

# 暴露端口
EXPOSE 8101

# Run the web service on container startup.
CMD ["java","-jar","/app/target/yubi-backend-0.0.1-SNAPSHOT.jar","--spring.profiles.active=prod"]