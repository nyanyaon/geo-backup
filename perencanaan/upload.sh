#!/bin/bash

# Database connection details
PG_CONN="dbname=postgres host=mandalika-geotiles-dbcmti-db-1 user=postgres port=54321 password=kucing123"

# Table name to append into
TABLE_NAME="bidang_tanah"

# Loop recursively through all .shp files in current folder
find . -type f -name "*.shp" | while read -r SHP_FILE; do
    echo "Processing: $SHP_FILE"
    ogr2ogr -append \
        -nln "$TABLE_NAME" \
        -nlt POLYGON \
        -lco GEOMETRY_NAME=geom \
        -lco FID=gid \
        -lco PRECISION=NO \
        "PG:$PG_CONN" \
        "$SHP_FILE"
done
