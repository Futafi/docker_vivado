#!/bin/bash
source ./.env
python3 -m http.server --bind $DOCKERHOST_IP 8000 &
