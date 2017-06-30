#!/bin/bash

CLIENTNAME="client-identifier"

docker run --rm -it -v openvpn_openvpn-data:/etc/openvpn kylemanna/openvpn:2.4 ovpn_revokeclient $CLIENTNAME remove

