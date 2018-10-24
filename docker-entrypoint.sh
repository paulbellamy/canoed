#!/bin/bash -eu

>/usr/src/app/canoed.conf cat <<-EOF
{
  "logging": {
    "level": "info"
  },
  "debug": false,
  "rainode": {
    "host": "rainode",
    "port": 7076
  },
  "postgres": {
    "user": "canoe",
    "host": "postgres",
    "database": "canoe",
    "password": "secretpassword1",
    "port": 5432
  },
  "redis": {
    "host": "redis",
    "port": 6379
  }
}
EOF

exec /usr/src/app/canoed
