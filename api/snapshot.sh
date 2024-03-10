# https://api.serverspace.ru/api/v1/servers/{server_id}/snapshots
curl -X POST \
  https://api.serverspace.ru/api/v1/servers/l3s996251/snapshots \
  -H 'Content-Type: application/json' \
  -H "x-api-key: $MY_API_KEY" \
  -d '{
    "name": "snap1",
  }'
