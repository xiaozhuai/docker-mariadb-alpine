# mariadb-alpine

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
        environment:
            MYSQL_ROOT_PASSWORD: "password"
```
