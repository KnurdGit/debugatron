FROM debian:bookworm-slim


ENV DEBIAN_FRONTEND=noninteractive \
    APT_OPTIONS="-o Dpkg::Use-Pty=0 -o Acquire::Retries=3"


RUN apt-get update ${APT_OPTIONS} \
    && apt-get update && apt-get install -y --no-install-recommends \
      vim iproute2 nmap tcpdump dnsutils curl iperf3 socat mtr \
      openssl iputils-ping jq yq bash-completion tmux \
    && apt-get purge -y manpages man-db \
    && apt-get autoremove -y \
    && apt-get clean && rm -rf /var/lib/apt/lists/* \ 
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY tmux.conf /root/.tmux.conf
COPY vimrc /root/.vimrc
COPY bashrc /root/.bashrc
COPY motd /root/.motd
RUN chmod +x /root/.motd

#RUN useradd -m -s /bin/bash debugger
#USER debugger
#WORKDIR /home/debugger

ENTRYPOINT ["/bin/bash"]
