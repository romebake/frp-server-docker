FROM alpine

RUN apk add --update tzdata
ENV TZ=Asia/Shanghai

ENV FRP_VERSION 0.16.0

RUN wget https://github.com/fatedier/frp/releases/download/v${FRP_VERSION}/frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && tar -xf frp_${FRP_VERSION}_linux_amd64.tar.gz \
    && mkdir /frp \
    && cp frp_${FRP_VERSION}_linux_amd64/frps /frp/ \
    && rm -rf frp_${FRP_VERSION}_linux_amd64* \
    && rm -rf /var/cache/apk/*

VOLUME /frp/frps.ini

WORKDIR /frp
ENTRYPOINT ["./frps","-c","./frps.ini"]