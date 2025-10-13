FROM ghcr.io/osgeo/gdal:ubuntu-small-latest

WORKDIR /app

COPY . .

CMD ["/bin/bash"]

