# ineedmoney

Budget app in pure Django Admin

## Usefull commands

### Create database dump

Create dump file from existing databse in container

#### Login to container

``` ::bash::
docker-compose exec pgsql  /bin/bash
```

#### Create dump file inside container, into mounted volume

``` ::bash::
  pg_dump $POSTGRES_DB -h $POSTGRES_HOST -U $POSTGRES_USER > /docker-entrypoint-initdb.d/ineedmoney-$(date '+%Y-%m-%d_%H:%M:%S').sql
  ```
