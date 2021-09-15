#!/bin/bash


# Remove last update flag
rm last-update/update-complete

# Run all stable countries and global datasets
printf "Run for all regional locations"
Rscript R/run-region-updates.R -w -u -i "vietnam/*" --log vietnam_$(date +%m%d).log 

# Add update complete flag
touch last-update/update-complete
