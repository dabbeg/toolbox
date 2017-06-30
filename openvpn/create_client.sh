#!/bin/bash

CLIENTNAME="win-carbon-ru"

docker run -v openvpn_openvpn-data:/etc/openvpn --rm -it kylemanna/openvpn:2.4 easyrsa build-client-full $CLIENTNAME
docker run -v openvpn_openvpn-data:/etc/openvpn --rm kylemanna/openvpn:2.4 ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn
