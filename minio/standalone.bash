#!/usr/bin/env bash
# see https://docs.min.io/docs/minio-quickstart-guide.html

podman run -d --name minio \
  -p 9000:9000 \
  -p 9001:9001 \
  -e "MINIO_ACCESS_KEY=changeme" \
  -e "MINIO_SECRET_KEY=changeme" \
  -v /data/minio:/data \
  --restart=always \
  minio/minio server /data --console-address ":9001"
