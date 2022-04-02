FROM ubuntu:20.04
ENV DEBIAN_FRONTEND=noninteractive
COPY sources.list /etc/apt/sources.list
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y wget libgbm1 libasound2 \
 && wget https://issuepcdn.baidupcs.com/issue/netdisk/LinuxGuanjia/4.3.0/baidunetdisk_4.3.0_amd64.deb \
         -O /tmp/baidunetdisk_4.3.0_amd64.deb \
 && apt-get install -y /tmp/baidunetdisk_4.3.0_amd64.deb \
 && apt-get install -y fonts-noto fonts-noto-cjk-extra fonts-noto-color-emoji \
 && apt-get autoremove -y \
 && apt-get clean \
 && rm -rvf /tmp/* /var/lib/apt/lists/*
ENTRYPOINT ["/opt/baidunetdisk/baidunetdisk", "--no-sandbox"]
