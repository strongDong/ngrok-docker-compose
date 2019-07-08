#!/bin/sh
set -e

if [ "${DOMAIN}" == "" ]; then
    echo "Please set DOMAIN"
    exit 1
fi



#/ngrok/bin/ngrokd -tlsKey=assets/server/tls/snakeoil.key -tlsCrt=assets/server/tls/snakeoil.crt -domain="${DOMAIN}" -httpAddr=:${HTTP_ADDR} -httpsAddr=:${HTTPS_ADDR} -tunnelAddr=:${TUNNEL_ADDR}

cd /ngrok/bin/ && ./ngrokd -domain="${DOMAIN}"  -log=logs/run.log
