FROM ubuntu:16.04

WORKDIR /usr/app
COPY curl_stuff.sh /usr/app/
RUN apt-get update && apt-get install -y curl
CMD ["sh","curl_stuff.sh"]

