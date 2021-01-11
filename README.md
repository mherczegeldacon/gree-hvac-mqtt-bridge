# Gree HVAC MQTT bridge

Bridge service for communicating with Gree air conditioners using MQTT broadcasts. It can also be used as a [Hass.io](https://home-assistant.io/) addon.

docker build https://github.com/mherczegeldacon/gree-hvac-mqtt-bridge.git -t greehvac_st3roid

docker run --name greehvac -d greehvac_st3roid:latest 
