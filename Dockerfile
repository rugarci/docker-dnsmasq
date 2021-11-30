FROM alpine:3.12.9

RUN apk add dnsmasq
ADD ./dnsmasq.conf /etc/dnsmasq.conf
CMD dnsmasq -k

EXPOSE 53/udp
