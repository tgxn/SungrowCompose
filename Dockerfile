FROM alpine:latest

USER root

RUN apk add --no-cache wget curl colordiff tzdata \
    && wget -O GoSungrow-linux_amd64.tar.gz https://github.com/MickMake/GoSungrow/releases/download/v3.0.7/GoSungrow-linux_amd64.tar.gz \
    && tar zxvf GoSungrow-linux_amd64.tar.gz \
    && rm GoSungrow-linux_amd64.tar.gz \
    && mv GoSungrow /usr/bin/ \
    && chmod a+x /usr/bin/GoSungrow 

# HEALTHCHECK --interval=5m --timeout=5s --retries=1 \
#     CMD ./healthcheck.sh

RUN mkdir /opt/GoSungrow

WORKDIR /opt/GoSungrow

CMD ["GoSungrow", "cron", "run", "00", "07", ".", ".", ".", "sync", "default"]
