FROM ubuntu:bionic
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update \
 && apt-get upgrade -y \
 && apt-get install -y wget libgbm1 libasound2 \
 && wget https://issuecdn.baidupcs.com/issue/netdisk/LinuxGuanjia/3.5.0/baidunetdisk_3.5.0_amd64.deb \
         -O /tmp/baidunetdisk_3.5.0_amd64.deb \
 && apt-get install -y /tmp/baidunetdisk_3.5.0_amd64.deb \
 && apt-get install -y fonts-noto fonts-noto-cjk-extra fonts-noto-color-emoji \
 && apt-get autoremove -y \
 && apt-get clean \
 && rm -rvf /tmp/* /var/lib/apt/lists/*
ENTRYPOINT ["/opt/baidunetdisk/baidunetdisk", "--no-sandbox"]
