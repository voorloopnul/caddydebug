#!/bin/bash

echo "${rathole_listening_port}"
echo "${rathole_expose_port}"
echo "${rathole_secret}"

cat > server.toml <<EOF
# server.toml
[server]
bind_addr = "0.0.0.0:${rathole_listening_port}"

[server.services.blueos_vehicle]
token = "${rathole_secret}"
bind_addr = "0.0.0.0:${rathole_expose_port}"
EOF

cat server.toml

./rathole server.toml
