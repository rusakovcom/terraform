#https://api.serverspace.ru/api/v1/servers/{server_id}/nics/{nic_id}
curl -X PUT \
  https://api.serverspace.ru/api/v1/servers/l3s996251/nics/46176 \
  -H 'Content-Type: application/json' \
  -H "x-api-key: $MY_API_KEY" \
  -d '{
    "bandwidth_mbps": 50,
  }'

