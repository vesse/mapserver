#!/bin/bash

source scripts/helpers.sh

rsync "data/001_yleiskartta_4500k" "yleiskartta_4500k/kaikki/etrs89/shape/"
rsync "data/001_yleiskartta_1000k" "yleiskartta_1000k/kaikki/etrs89/shape/"
