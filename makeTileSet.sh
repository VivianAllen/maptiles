#!/bin/bash

output_layername="lad"
source_file="Local_Authority_Districts_(December_2011)_Boundaries_EW_BFC.geojson"
version="v4"

# make high zoom, full detail layer
tippecanoe \
    --detect-shared-borders \
    --coalesce-densest-as-needed \
    --no-tile-compression \
    --output-to-directory="authorities-2011/${version}" \
    --maximum-zoom=g \
    --layer="${output_layername}" \
    "geometry_files/${source_file}"
    