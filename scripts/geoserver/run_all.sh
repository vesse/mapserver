#!/bin/bash

scripts/geoserver/000_delete_workspaces.sh
scripts/geoserver/001_create_workspace.sh
scripts/geoserver/002_add_datastore.sh
scripts/geoserver/003_add_features.sh
scripts/geoserver/004_add_styles.sh
scripts/geoserver/005_create_8000k_layer.sh
scripts/geoserver/005_create_4500k_layer.sh
scripts/geoserver/005_create_2000k_layer.sh
scripts/geoserver/005_create_1000k_layer.sh
scripts/geoserver/005_create_test_layer.sh
scripts/geoserver/006_create_combined_layer.sh
