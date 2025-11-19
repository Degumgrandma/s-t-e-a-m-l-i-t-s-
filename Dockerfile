FROM docker.io/whyour/qinglong:latest
ENV TZ=Asia/Shanghai \
    QL_DIR=/ql \
    Port=5700 \
    PANEL_PORT=5700 \
    IPPORT=127.0.0.1:5700
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
WORKDIR $QL_DIR
EXPOSE 5700
