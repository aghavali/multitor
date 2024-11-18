#!/bin/bash

sed -e "s|\${BRIDGE_1}|$BRIDGE_1|g" \
    -e "s|\${BRIDGE_2}|$BRIDGE_2|g" \
    "_torrc" > "torrc"

cp torrc /etc/tor/ && service tor start && tail -f /dev/null
