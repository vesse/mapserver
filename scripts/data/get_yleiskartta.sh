#!/bin/bash

source scripts/helpers.sh

rsyncKapsi "data/yleiskartta_4500k" "yleiskartta_4500k/kaikki/etrs89/shape/"
rsyncKapsi "data/yleiskartta_1000k" "yleiskartta_1000k/kaikki/etrs89/shape/"
