#!/bin/bash 

##########
# 6th HPC Summer School 2023
##########


#update repos
sudo apt update && sudo apt upgrade

#Installing gcc 

sudo apt install gcc openmpi -y 
#Download miniconda installer 

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh

# Installing miniconda 
echo "Please accept the standard path to install restart the shell"
bash Miniconda3-latest-Linux-x86_64.sh
# configt default values for conda
conda config --set auto_activate_base false
#

# Validate conda version 
conda -v 

# create a new conda env with required packages. 

conda env create -f lab_env.yml

# activate conda env
conda activate cybercolombia
