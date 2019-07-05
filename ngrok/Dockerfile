FROM golang:1.7.1-alpine

ARG SERVER_DOMAIN='example.com'
ENV DOMAIN ${SERVER_DOMAIN}

RUN apk add --no-cache git make openssl
RUN git clone https://github.com/strongDong/ngrok.git /ngrok/

COPY *.sh /ngrok/
RUN cd /ngrok/ && sh build.sh

EXPOSE 4443
EXPOSE 80
EXPOSE 443

CMD ["sh","/ngrok/server.sh"]

