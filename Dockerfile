FROM ghcr.io/osgeo/gdal:ubuntu-full-latest

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install curl unzip -y

WORKDIR /app

COPY . .

RUN chmod +x /app/perencanaan/unzip.sh
RUN chmod +x /app/perencanaan/upload.sh
RUN chmod +x /app/tematik/unzip.sh

CMD ["tail", "-f", "/dev/null"]
