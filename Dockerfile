FROM eclipse-temurin:21-jdk-alpine

RUN apk add --no-cache tzdata

# Timezone: Athens (EET/EEST)
ENV TZ=Europe/Athens
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo "$TZ" > /etc/timezone

WORKDIR /app
COPY app/app.jar /app/app.jar

EXPOSE 8441
ENTRYPOINT ["java","-jar","/app/app.jar"]
