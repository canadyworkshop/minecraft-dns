FROM alpine:latest

RUN apk add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY start.sh ./

ENTRYPOINT [ "./start.sh"]
#CMD ["dnsmasq", "-d", "-p", "53"]
EXPOSE 53/udp


