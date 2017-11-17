FROM ubuntu:16.04
LABEL maintainer="Stefan Kuethe <crazycapivara@gmail.com>"
RUN apt-get update \
	&& apt-get install python-mapnik -y --no-install-recommends \
	&& apt-get autoremove -y \
	&& rm -rf /var/lib/apt/lists/*
COPY ./data /mapnik/example
WORKDIR /mapnik/example
CMD ["python", "generate_tiles.py", "map_file.xml"]

