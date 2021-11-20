# docker-dnsmasq

[![Latest Github release](https://img.shields.io/github/release/rugarci/docker-dnsmasq.svg)](https://github.com/rugarci/docker-dnsmasq/releases/latest)
[![Image size](https://img.shields.io/docker/image-size/rugarci/dnsmasq/latest)](https://hub.docker.com/r/rugarci/dnsmasq)
[![Docker Pulls](https://img.shields.io/docker/pulls/rugarci/dnsmasq.svg)](https://hub.docker.com/r/rugarci/dnsmasq/) 

Try to make a simple captive portal

### Ports
**53 UDP** is exposed by default.

## Usage


```yaml
  dnsmasq:
    image: dnsmasq
    container_name: dnsmasq
    command: dnsmasq -k --no-daemon --log-queries
    ports:
      - 53:53/udp
    extra_hosts:
      - aaa.com:192.168.254.1
      - captive.apple.com:192.168.254.1
      - detectportal.firefox.com:192.168.254.1
      - www.msftncsi.com:192.168.254.1
      - connectivitycheck.gstatic.com:192.168.254.1
    restart: always

 ```
