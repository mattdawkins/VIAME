#!/bin/sh

# Setup VIAME Paths (no need to run multiple times if you already ran it)

export VIAME_INSTALL=./../..

source ${VIAME_INSTALL}/setup_viame.sh 

# Run pipeline

pipeline_runner -p ${VIAME_INSTALL}/configs/pipelines/filter_debayer_and_enhance.pipe \
                -s input:image_list_file=input_list.txt