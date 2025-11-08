FROM ghcr.io/osgeo/gdal:ubuntu-full-latest

SHELL ["/bin/bash", "-c"]

RUN apt-get update && apt-get install curl unzip -y

WORKDIR /app

COPY . .

RUN chmod +x /app/Persil/unzip.sh && /app/Persil/unzip.sh
RUN chmod +x /app/Persil/upload.sh && /app/Persil/upload.sh

CMD ["tail", "-f", "/dev/null"]
