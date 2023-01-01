#!/bin/sh
if [ ! -f UUID ]; then
  UUID="e6fdb069-a2a8-4f4d-b502-1eb96706a775"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

