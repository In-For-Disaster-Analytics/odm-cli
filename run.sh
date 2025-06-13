#!/bin/bash


apptainer run --bind ${_tapisExecSystemInputDir}/images_dir,${_tapisExecSystemOutputDir}/code/images:/  --writable-tmpfs /corral/tacc/aci/PT2050/community/ODM/odm_latest.sif\
  --orthophoto-png --mesh-octree-depth 12 --ignore-gsd --dtm --smrf-threshold 0.4\
   --smrf-window 24 --dsm --pc-csv --pc-las  --rerun-all --orthophoto-kmz --force-gps \
 --ignore-gsd  --matcher-type flann --feature-quality ultra --max-concurrency 128\
  --cog --pc-classify --sky-removal  --pc-quality high --rerun-all  --use-hybrid-bundle-adjustment --build-overviews --time --min-num-features 10000\
   --project-path ${_tapisExecSystemInputDir}/images_dir