FROM debian:bullseye-slim

RUN apt-get update && apt-get install -y \
      chromium \
      chromium-driver \
      default-jdk \
      wget

RUN wget https://selenium-release.storage.googleapis.com/3.5/selenium-server-standalone-3.5.0.jar

CMD java -jar selenium-server-standalone-3.5.0.jar
