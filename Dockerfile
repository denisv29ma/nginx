#docker build --rm -t deniav29ma/nginx .
FROM debian:10.5

LABEL maintainer="denisv29ma"

ENV DEBIAN_FRONTEND noninteractive
ARG nginx_version="1.14.2"

RUN apt update

RUN apt install nginx -y

expose 80

CMD ["nginx", "-g", "daemon off;"]
