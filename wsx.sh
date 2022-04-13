export WSNUM=
envsubst '${WSNUM}' < nginx/sites/wsx.template > nginx/sites/ws.conf