FROM ghcr.io/osgeo/gdal:ubuntu-full-latest

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install curl unzip -y

WORKDIR /app

COPY . .

RUN chmod +x ./Persil/unzip.sh && ./unzip.sh
RUN chmod +x ./Persil/upload.sh && ./upload.sh

CMD ["tail", "-f", "/dev/null"]
