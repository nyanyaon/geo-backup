FROM ghcr.io/osgeo/gdal:ubuntu-full-latest

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install curl unzip -y

WORKDIR /app

COPY . .

CMD ["tail", "-f", "/dev/null"]
