FROM ubuntu:bionic as builder
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget libgbm1 libasound2
RUN wget https://issuecdn.baidupcs.com/issue/netdisk/LinuxGuanjia/3.5.0/baidunetdisk_3.5.0_amd64.deb -O /tmp/baidunetdisk_3.5.0_amd64.deb
RUN apt-get install -y /tmp/baidunetdisk_3.5.0_amd64.deb
RUN apt-get install -y fonts-noto fonts-noto-cjk-extra fonts-noto-color-emoji
RUN apt-get autoremove -y
RUN apt-get clean
RUN rm -rvf /tmp/* /var/lib/apt/lists/*

FROM ubuntu:bionic
COPY --from=builder / /
ENTRYPOINT ["/opt/baidunetdisk/baidunetdisk", "--no-sandbox"]
