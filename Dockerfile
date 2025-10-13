FROM ghcr.io/osgeo/gdal:ubuntu-small-latest

WORKDIR /app

COPY . .

CMD ["echo", "Hello Gdal"]

