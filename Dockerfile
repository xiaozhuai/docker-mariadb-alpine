FROM alpine:latest

RUN apk --no-cache add mariadb mariadb-client \
    && mkdir -p /run/mysqld /data \
    && chown mysql:mysql /run/mysqld /data

COPY entrypoint.sh /entrypoint.sh

EXPOSE 3306
VOLUME /data

ENV MYSQL_ROOT_PASSWORD="password"

ENTRYPOINT ["/entrypoint.sh"]
