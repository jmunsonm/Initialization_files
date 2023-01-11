#!/usr/bin/env bash

module unload anaconda
module load anaconda3/2019.07
source activate julia

cd /mnt/scgc/simon/microg2p/

node=$(hostname -i)
jupyter lab --no-browser --ip=$node --port=8893