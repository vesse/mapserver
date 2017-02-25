#!/bin/bash

source scripts/helpers.sh

rsyncKapsi "data/001_yleiskartta_4500k" "yleiskartta_4500k/kaikki/etrs89/shape/"
rsyncKapsi "data/001_yleiskartta_1000k" "yleiskartta_1000k/kaikki/etrs89/shape/"
