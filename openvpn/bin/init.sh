#!/bin/bash

docker-compose run --rm openvpn ovpn_genconfig -u udp://vpn.computerdave.org
docker-compose run --rm openvpn ovpn_initpki
