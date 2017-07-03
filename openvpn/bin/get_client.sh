#!/bin/bash

CLIENTNAME = "client"

docker-compose run --rm openvpn ovpn_getclient $CLIENTNAME > $CLIENTNAME.ovpn
