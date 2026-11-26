#!/bin/bash

# Preparation
#
# Don't let the script continue if anything fails.
# Set Globbing to produce NO arguments if no match directory is found.

set -euo pipefail
shopt -s nullglob

# Variables
#
# ...

devel_boxes=(/home/distrobox/*devel)

# Methods
#
# Check if any matching directory exists. If not, stop the program.

if [ ${#devel_boxes[@]} -eq 0 ]; then
	echo "No matching containers were found. Aborting."; 
	exit 1;
fi

# ...
# Then Create subdirectories.

for box in "${devel_boxes[@]}"; do
	echo "Creating directories for container $box..."
	mkdir -p "$box"/{workspace,bin,lib,doc};
done
