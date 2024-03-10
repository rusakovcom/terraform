curl -X GET \
https://api.serverspace.ru/api/v1/servers \
  -H 'content-type: application/json' \
  -H "x-api-key: $MY_API_KEY" | json_pp

