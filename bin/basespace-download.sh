#!/bin/bash

set -e

# Set default values for paths
output_path="/opt/analysis"
config_path="/opt/resources/basespace.cfg"

# Argument handling using getopts
# Could alternatively use manual processing. This would allow for longer form
# inputs.
while getopts 'i:o:c:' opt; do
  case "${opt}" in
    i) run_id=${OPTARG} ;;
    o) ouput_path=${OPTARG} ;;
    c) config_path="${OPTARG}" ;;
    *) echo "Usage: $0 [-r value] [-o path] [-c path]" 1>&2
       exit 1 ;;
  esac
done

# Ensure run_id is specified
if [ ! "$run_id" ]; then
  echo "Argument -i must be provided"
  echo "$usage" >&2; exit 1
fi

# Read data from config file
mapfile -t config <${config_path}

# Remove whitespace from each line and export each line as a variable
export BASESPACE_API_SERVER=$(echo ${config[0]} | sed 's/.*=.//g')
export BASESPACE_ACCESS_TOKEN=$(echo ${config[1]} | sed 's/.*=.//g')

# Download data
bs download run -i ${run_id} -o ${output_path} 


## inputs
# runid
# output path
# config file path

# read config file which has the API server and the authorization token
# store those as environment variables

# call bs download run -i <RunID> -o <output>

# Manual argument handling
# while [[ $# -gt 0 ]]; do
#   case $1 in
#     -i|--run-id)
#       run_id="$2"
#       shift
#       shift
#       ;;
#     -h|-\?|--help)
#       "Usage: $0 [-r value] [-o path] [-c path]" 1>&2
#       exit 1


# 216621420
