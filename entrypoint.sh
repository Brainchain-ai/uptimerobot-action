#!/bin/sh

# Inputs
API_KEY="${API_KEY}"
MONITOR_ID="${MONITOR_ID}"
ACTION="${ACTION}"

# UptimeRobot API URL
API_URL="https://api.uptimerobot.com/v2/editMonitor"

# Construct JSON payload
JSON_PAYLOAD=$(
    cat <<EOF
{
  "api_key": "${API_KEY}",
  "id": "${MONITOR_ID}",
  "status": "${ACTION}"
}
EOF
)
# print the payload
echo $JSON_PAYLOAD

# Pause or resume UptimeRobot monitor
curl --request POST \
    --url "${API_URL}" \
    --header "Content-Type: application/json" \
    --data-raw "$JSON_PAYLOAD"
