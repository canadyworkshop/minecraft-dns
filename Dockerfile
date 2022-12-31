FROM alpine:latest

RUN apk add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY start.sh ./

ENTRYPOINT [ "./start.sh"]
EXPOSE 53/udp


