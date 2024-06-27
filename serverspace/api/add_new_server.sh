curl -X POST \
  https://api.serverspace.ru/api/v1/servers \
  -H 'Content-Type: application/json' \
  -H "x-api-key: $MY_API_KEY" \
  -d '{
    "name": "CentOS7",
    "location_id": "ds1",
    "image_id": "CentOS-7.9-X64",
    "cpu": 1,
    "ram_mb": 2048,
    "volumes": [
      {
        "name": "boot",
        "size_mb": 25600
      }
    ],
    "networks": [
      {
        "bandwidth_mbps": 50
      }
    ],
    "ssh_key_ids": [
      16795,
      16988
    ]
  }'

