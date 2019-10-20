FROM alpine

LABEL maintainer="Yannick Foeillet <bzhtux@gmail.com>"

RUN apk add --no-cache \
    curl

RUN curl -L "https://storage.googleapis.com/kubernetes-release/release/`curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt`/bin/linux/amd64/kubectl" -o /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl
