curl -X POST \
  https://api.serverspace.ru/api/v1/ssh-keys \
  -H 'Content-Type: application/json' \
  -H "x-api-key: $MY_API_KEY" \
  -d '{
    "name": "YourKeyName",
    "public_key": "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIDTegum8CkX8XvGqPRDZarDda+RcScN0nOtBLJbI12Vq"
  }'

