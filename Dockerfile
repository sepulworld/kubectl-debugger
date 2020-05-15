FROM debian:buster-slim

RUN apt-get update && \
  apt-get install \
    tcpdump mtr dnsutils \
    curl telnet traceroute \
    iputils-ping wget httpie \
    nmap -y

RUN apt-get clean

CMD ['/bin/bash']
