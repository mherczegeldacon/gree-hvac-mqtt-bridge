#!/bin/sh
set -e

npm install

npx pm2 start index.js --silent -m --merge-logs --name="HVAC_1" -- \
	--hvac-host="10.0.88.38" \
	--mqtt-broker-url="mqtt://10.0.88.1" \
	--mqtt-topic-prefix="greehvac/halo" \
	--mqtt-username="" \
	--mqtt-password=""

npx pm2 start index.js --silent -m --merge-logs --name="HVAC_2" -- \
	--hvac-host="10.0.88.42" \
	--mqtt-broker-url="mqtt://10.0.88.1" \
	--mqtt-topic-prefix="greehvac/nappali" \
	--mqtt-username="" \
	--mqtt-password=""

npx pm2 logs /HVAC_/

