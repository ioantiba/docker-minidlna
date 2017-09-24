FROM alpine
MAINTAINER "ioantiba@gmail.com"

# Install packages
RUN apk update && \
    apk upgrade && \
    apk --no-cache add bash minidlna git curl vim

#The --no-cache option allows you to not cache the index locally, which is recommended for keeping your containers small

# Entrypoint
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 8200
