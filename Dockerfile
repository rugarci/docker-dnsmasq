FROM alpine

RUN apk add dnsmasq
ADD ./dnsmasq.conf /etc/dnsmasq.conf
CMD dnsmasq -k

EXPOSE 53/udp
