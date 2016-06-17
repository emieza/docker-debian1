FROM library/debian
MAINTAINER Enric Mieza <emieza@xtec.cat>

RUN echo "nameserver 10.27.100.2" > /etc/resolv.conf && \
apt-get update && \
apt-get -y upgrade && \
apt-get install -y iputils-ping netcat-traditional && \
apt-get clean && apt-get autoclean && \
rm -rf /var/lib/apt/lists/*

