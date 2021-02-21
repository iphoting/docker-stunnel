FROM alpine:3.12

ENTRYPOINT ["/usr/bin/stunnel"]

RUN apk add --no-cache stunnel \
 && chown stunnel:stunnel /var/lib/stunnel \
 && chmod 0755 /var/lib/stunnel

USER stunnel:stunnel
WORKDIR /var/lib/stunnel
VOLUME /etc/stunnel
