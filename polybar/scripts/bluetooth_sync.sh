#!/bin/sh
#
CARD_NUMBER=1
A2DP="a2dp_sink"
HSP="handsfree_head_unit"
SYNC=$(pactl -f json list | jq .cards[1].active_profile -r)
echo "sync $SYNC is"
if [[ ${SYNC} = ${A2DP} ]]
then
  SYNC=$HPS
else
  SYNC=$A2DP

pacmd set-card-profile ${CARD_NUMBER} $SYNC
