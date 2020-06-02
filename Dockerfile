FROM alpine

LABEL maintainer Wallysson <wallysslima@gmail.com>

RUN apk --update add hugo && \
    rm -rf /var/lib/apt/lists/* && \
    rm /var/cache/apk/*

WORKDIR /site

ENTRYPOINT ["hugo"]
CMD ["serve", "-D", "-w", "--bind=0.0.0.0"]
