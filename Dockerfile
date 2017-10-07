FROM ubuntu
LABEL maintainer "j"

ENV DEBIAN_FRONTEND noninteractive

#    && apt-get install -y --force-yes --no-install-recommends \
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        motion=3.2.12+git20140228-8build1 \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

CMD motion

