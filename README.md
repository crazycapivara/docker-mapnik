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
```

