#!/bin/bash

act -P ubuntu-latest=catthehacker/ubuntu:act-22.04 \
-j update-cves \
-s GITHUB_TOKEN="${ACT_GITHUB_TOKEN}"