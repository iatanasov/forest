#!/bin/sh
#
CARD_NUMBER=1
A2DP="a2dp_sink"
HSP="handsfree_head_unit"
SYNC=$(pactl -f json list cards | jq .[1].active_profile -r)
if [ "${SYNC}" = "${A2DP}" ]
then
  SYNC=$HSP
elif [ "${SYNC}" = "${HSP}" ]
then
  SYNC=$A2DP
else
  echo "Fail to find the sink"
  exit 1
fi

echo "pacmd set-card-profile ${CARD_NUMBER} ${SYNC}"
