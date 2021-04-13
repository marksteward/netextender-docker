FROM ubuntu

RUN apt-get update && \
    apt-get -y install wget ppp kmod file iproute2 \
                       iptables iputils-ping curl socat

# install creates /etc/ppp/peers/sslvpn among others
RUN wget https://software.sonicwall.com/NetExtender/NetExtender.Linux-10.2.824.x86_64.tgz && \
    tar zxf NetExtender.Linux-10.2.824.x86_64.tgz && \
    cd netExtenderClient && \
    ./install

ENTRYPOINT ["/netExtenderClient/netExtender"]
