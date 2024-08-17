# export key 

export MY_API_KEY=<key from https://my.serverspace.io/automation>
printenv | grep MY_API_KEY   # check

# get servers list (tested)

curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/servers | json_pp

# del server (tested)

curl -X DELETE "https://api.serverspace.io/api/v1/servers/{server_id}" \
     -H "X-API-KEY: $MY_API_KEY" \
     | json_pp

# get snapshop lists (tested)

curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/servers/{server_id}/snapshots | json_pp

# create snapshop (tested) 

curl -X POST "https://api.serverspace.io/api/v1/servers/{server_id}/snapshots" \
-H "Content-Type: application/json" \
-H "X-API-KEY: $MY_API_KEY" \
-d '{"name": "before_server_update"}' | json_pp

# delete snapshop (tested)

curl -X DELETE "https://api.serverspace.io/api/v1/servers/{server_id}/snapshots/{snap_id}" \
-H "X-API-KEY: $MY_API_KEY" \
-H "Content-Type: application/json"

# revert to snapshop (tested)

curl -X POST "https://api.serverspace.io/api/v1/servers/{server_id}/snapshots/{snap_id}/rollback" \
-H "Content-Type: application/json" \
-H "X-API-KEY: $MY_API_KEY" \
-d '{}' \
| json_pp


# get list of images, locations, apps
curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/images | json_pp


curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/locations | json_pp


curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/applications  | json_pp


# create server
# example images: "Ubuntu-20.04-X64","Oracle-9.3-X64","Oracle-8.6-X64","CentOS-7.9-X64","Debian-12-X64","Ubuntu-22.04-X64","FreeBSD-14.0-X64","Windows-Server 2022-X64","Windows-Server 2019-X64"
# example images: ds1, am2, kz

curl -X POST https://api.serverspace.io/api/v1/servers \
-H "Content-Type: application/json" \
-H "X-API-KEY: $MY_API_KEY" \
-d '{
  "location_id": "am2",
  "image_id": "Oracle-9.3-X64",
  "cpu": 2,
  "ram_mb": 4096,
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
  "name": "monitoring-server",
  "server_init_script": "mkdir -p ~/.ssh && chmod 700 ~/.ssh && echo \"ssh-ed25519 AAAAC3NzaC1lZDI1TE5AAAAJabDujaxcI3a0Td1JYc1rMkxiCxbQ+BapDotHejm5ujpp exampmle@key.com\" >> ~/.ssh/authorized_keys && chmod 600 ~/.ssh/authorized_keys"
}' | json_pp
