# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:  https://github.com/ngacareer
# Twitter: https://twitter.com/ngacareer
# Docker:  https://hub.docker.com/ngacareer
# web   :  https://ngacareer.com

FROM  ngacareer/alpine-curl

LABEL maintainer="triuhv <ms@ngacareer.com>" \
    architecture="amd64/x86_64" \
    python-version="3.0" \
    alpine-version="3.13" \
    build="01-Mar-2021"

ENV PYTHON_VERSION 3.9.2
ENV PY_VERSION 3.9

RUN apk upgrade --no-cache --update && \
    apk add --no-cache --update dumb-init ca-certificates make bash build-base zlib-dev 
RUN cd /tmp && \
    wget -O - https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tgz | tar xzvf - && \
    cd Python-${PYTHON_VERSION} && \
    ./configure --enable-optimizations --with-ensurepip=install && \
    make -j 8 && \
    make install
RUN cd /usr/local/bin && \
    ln -s python${PY_VERSION} python
    
RUN addgroup ngacareer && \
    adduser -D -G ngacareer -h /ngacareer -s /bin/sh ngacareer

USER ngacareer
WORKDIR /ngacareer

ENTRYPOINT ["/usr/bin/dumb-init", "entrypoint.sh"]
