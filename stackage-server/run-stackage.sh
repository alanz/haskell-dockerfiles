#!/bin/sh

# Insert the stackage line into the .cabal/config file


sed -i "s@POSTGRES_TCP_ADDR@${POSTGRES_PORT_5432_TCP_ADDR}@" /stackage-server/config/postgresql.yml
sed -i "s@POSTGRES_PORT@${POSTGRES_PORT_5432_TCP_PORT}@" /stackage-server/config/postgresql.yml


(cd /stackage-server && ./dist/build/stackage-server/stackage-server Development --port 3000)
