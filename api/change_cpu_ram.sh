#https://api.serverspace.ru/api/v1/servers/{server_id}
curl -X PUT \
  https://api.serverspace.ru/api/v1/servers/{server_id} \
  -H 'Content-Type: application/json' \
  -H "x-api-key: $MY_API_KEY" \
  -d '{
    "cpu": 4,
    "ram_mb": 8192
  }'

