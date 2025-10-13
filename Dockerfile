FROM ghcr.io/osgeo/gdal:ubuntu-small-latest

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install curl -y

WORKDIR /app

COPY . .

CMD ["tail", "-f", "/dev/null"]

