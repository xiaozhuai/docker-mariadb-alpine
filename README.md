# mariadb-alpine

Has bug when mount `/data` to host, currently is not available on docker hub

## no password

```yaml
version: '2'
services:
    mariadb:
        image: xiaozhuai/mariadb-alpine:latest
        ports:
            - 3306:3306
        environment:
            MYSQL_ALLOW_EMPTY_PASSWORD: "yes"
```

## password

```yaml
version: '2'
services:
    mariadb:
        image: xiaozhuai/mariadb-alpine:latest
        ports:
            - 3306:3306
        environment:
            MYSQL_ROOT_PASSWORD: "password"
```

## persistence

```yaml
version: '2'
services:
    mariadb:
        image: xiaozhuai/mariadb-alpine:latest
        volumes:
            - ./data:/data
        ports:
            - 3306:3306
```
