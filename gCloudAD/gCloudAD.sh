#!/bin/bash

####################################### STATIC VARIABLES ########################################

# Text Color
WHITE="\033[0m"
RED="\033[0;31m"
YELLOW="\033[1;33m"
GREEN="\033[0;32m"

# Infinte Loop
ALWAYS_TRUE=true

# Regex
Integer='^[0-9]+$'

######################################### REQUIREMENTS ##########################################

echo '''
 ________  ________  ___       ________  ___  ___  ________  ________  ________     
|\   ____\|\   ____\|\  \     |\   __  \|\  \|\  \|\   ___ \|\   __  \|\   ___ \    
\ \  \___|\ \  \___|\ \  \    \ \  \|\  \ \  \\\  \ \  \_|\ \ \  \|\  \ \  \_|\ \   
 \ \  \  __\ \  \    \ \  \    \ \  \\\  \ \  \\\  \ \  \ \\ \ \   __  \ \  \ \\ \  
  \ \  \|\  \ \  \____\ \  \____\ \  \\\  \ \  \\\  \ \  \_\\ \ \  \ \  \ \  \_\\ \ 
   \ \_______\ \_______\ \_______\ \_______\ \_______\ \_______\ \__\ \__\ \_______\
    \|_______|\|_______|\|_______|\|_______|\|_______|\|_______|\|__|\|__|\|_______|
'''

####################################### GATHER USER INPUT #######################################

# Create AD domain

gcloud active-directory domains create <FQDN> \
    --reserved-ip-range=<CIDR_RANGE> --region=<REGION> \
    --authorized-networks=projects/<PROJECT_ID>/global/networks/<VPC_NETWORK_NAME>

# Join Linux VM to domain (Execute commands through SSH)