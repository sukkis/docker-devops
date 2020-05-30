FROM ubuntu:latest
WORKDIR /usr/app/src
RUN apt-get update && apt-get install -y curl 
COPY . /usr/app/src
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs webpack
RUN npm install
ENTRYPOINT npm start
