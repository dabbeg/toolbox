#!/bin/bash

docker run --restart always -v openvpn_openvpn-data:/etc/openvpn -d -p 1194:1194/udp --cap-add=NET_ADMIN kylemanna/openvpn:2.4
