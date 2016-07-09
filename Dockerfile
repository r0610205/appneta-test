FROM node:argon

ADD . /app
WORKDIR /app

RUN apt-get update && apt-get -y install wget curl git && \
    npm install && \
    wget https://files.appneta.com/install_appneta.sh && \
    bash ./install_appneta.sh <key>

EXPOSE 8080

CMD service tracelyzer start && npm start


