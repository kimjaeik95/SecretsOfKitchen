# 사용할 베이스 이미지
FROM openjdk:17-jdk

# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 JAR 파일 복사
COPY ./build/libs/SecretsOfKitchen-0.0.1-SNAPSHOT.jar ./app.jar

# 환경 변수 설정
ARG PROFILES
ARG ENV

# 컨테이너 실행 명령어
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILES}","-Dserver.env=${ENV}", "-jar", "app.jar"]