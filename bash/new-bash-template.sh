#!/bin/bash
# <Script description>
#
# Copyright 2023 by Vi  Nguyen
# Last revised Aug 23, 2023

set -e

WORKING_NETWORK='developer-infras'

###################################################################
# Function Description
# GLOBALS:
#   WORKING_NETWORK
# ARGUMENTS:
# 
# OUTPUTS:
#   
# RETURN:
#   0 if print succeeds, non-zero on error.
###################################################################
function create_docker_network() {
  if [[ docker network ls | grep "${WORKING_NETWORK}" == "" ]]; then 
    docker network create "${WORKING_NETWORK}"
  else 
    echo "Docker network: $WORKING_NETWORK existed before"
  fi
}

###################################################################
# Main Area
###################################################################
create_docker_network



###################################################################
# End Script
###################################################################
