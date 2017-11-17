# docker-mapnik

create local tiles using mapnik

## build

```bash
$ docker build -t crazycapivara/mapnik github.com/crazycapivara/docker-mapnik
```

## run example

```bash
# Create tiles folder 
$ docker volume create --name mapnik-share

# Create tiles
$ docker run --rm -v mapnik-share:/mapnik/tiles crazycapivara/mapnik

# Serve tiles via nginx
$ docker run --name mapnik-nginx -p 2080:80 -v mapnik-share:/usr/share/nginx/html:ro -d nginx:alpine

# Watch requests
$ docker logs -f mapnik-nginx

# Open your browser and try stuff like this ...
http://localhost:2080/0/0/0.png
http://localhost:2080/1/0/0.png
http://localhost:2080/3/5/3.png
```

