#!/bin/bash

CLIENTNAME="client-identifier"

# Keep the corresponding crt, key and req files.
#docker-compose run --rm openvpn ovpn_revokeclient $CLIENTNAME

# Remove the corresponding crt, key and req files.
docker-compose run --rm openvpn ovpn_revokeclient $CLIENTNAME remove
