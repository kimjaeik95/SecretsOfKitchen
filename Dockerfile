# 사용할 베이스 이미지
FROM openjdk:17-jdk
## /app 파일실행문 (/app 디렉토리를 명시적으로 생성함으로써, 디렉토리가 존재하도록 보장합니다)
RUN mkdir /app
# 작업 디렉토리 설정
WORKDIR /app

# 애플리케이션 JAR 파일 복사
COPY ./build/libs/SecretsOfKitchen-0.0.1-SNAPSHOT.jar ./app.jar

# 환경 변수 설정
ARG PROFILES
ARG ENV

# 컨테이너 실행 명령어
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILES}","-Dserver.env=${ENV}", "-jar", "app.jar"]