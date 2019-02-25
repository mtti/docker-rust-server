FROM ubuntu:18.04

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        ca-certificates \
        lib32gcc1 \
        curl && \
    mkdir -p /opt/steamcmd && \
    cd /opt/steamcmd && \
    curl -s http://media.steampowered.com/installer/steamcmd_linux.tar.gz | tar -vxz

WORKDIR /app
COPY . .

RUN chmod a+x /app/start.sh

EXPOSE 28015/udp
EXPOSE 28016
ENTRYPOINT ["/app/start.sh"]
