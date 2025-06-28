#!/bin/bash

# Carrega token do .env
source .env

# This script is used to run GitHub Actions workflows locally using `act`.
act -P ubuntu-latest=catthehacker/ubuntu:act-22.04 \
-j update-cves \
--env-file .env \
-s GITHUB_TOKEN="$GITHUB_TOKEN"