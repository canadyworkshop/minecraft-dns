FROM alpine:latest

RUN apk add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
COPY start.sh ./

CMD ["./start.sh"]
#CMD ["dnsmasq", "-d", "-p", "8001"]
EXPOSE 8001/udp


