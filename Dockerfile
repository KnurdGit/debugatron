FROM debian:bookworm-slim


ENV DEBIAN_FRONTEND=noninteractive \
    APT_OPTIONS="-o Dpkg::Use-Pty=0 -o Acquire::Retries=3"


RUN apt-get update -qqq ${APT_OPTIONS} \
    && apt-get install -qqq -y --no-install-recommends ${APT_OPTIONS} \
      vim iproute2 nmap tcpdump dnsutils curl iperf3 socat mtr \
      openssl iputils-ping jq yq bash-completion tmux \
    && apt-get purge -qq -y ${APT_OPTIONS} manpages man-db \
    && apt-get autoremove -qq ${APT_OPTIONS} -y \
    && apt-get clean -qq && rm -rf /var/lib/apt/lists/* \
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
