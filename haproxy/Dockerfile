FROM haproxy:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y ssl-cert
RUN make-ssl-cert generate-default-snakeoil --force-overwrite && \
    cd /etc/ssl && \
    cat private/ssl-cert-snakeoil.key certs/ssl-cert-snakeoil.pem > monsite.pem

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg