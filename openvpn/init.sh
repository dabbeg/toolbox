#!/bin/bash

docker run -v openvpn_openvpn-data:/etc/openvpn --rm kylemanna/openvpn:2.4 ovpn_genconfig -u udp://vpn.computerdave.org
docker run -v openvpn_openvpn-data:/etc/openvpn --rm -it kylemanna/openvpn:2.4 ovpn_initpki
