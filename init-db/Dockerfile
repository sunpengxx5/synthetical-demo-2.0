FROM alpine:3.5

RUN apk add --no-cache mysql-client
COPY entrypoint.sh /
COPY fruitshop-init-db.sql /
CMD ["/bin/sh", "/entrypoint.sh"]

