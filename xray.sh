#!/bin/sh
if [ ! -f UUID ]; then
  UUID="b7befc5a-51ce-40dd-85fb-4e8ab19e673c"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

