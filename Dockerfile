FROM debian:latest

MAINTAINER  TianZhiMin "tzm1921995@foxmail.com"

ENV SSPORT 8388
ENV SSPASS myshadow
ENV SSMETHOD aes-256-cfb
ENV SSTIMEOUT 300
COPY sources.list /etc/apt/sources.list
RUN apt-get update && \
		apt-get install -y python-pip && \
		pip install shadowsocks

#COPY config.json /root/config.json
COPY run.sh /root/run.sh
RUN chmod +x /root/run.sh

ENTRYPOINT ["/root/run.sh"]
