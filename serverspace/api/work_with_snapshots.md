# export key

export MY_API_KEY=123456789
printenv | grep MY_API_KEY

# get servers list (tested)

curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/servers | json_pp

# get snapshop lists (tested)

curl -s -H "Content-Type: application/json" -H "X-API-KEY: $MY_API_KEY" https://api.serverspace.io/api/v1/servers/l2s1029043/snapshots | json_pp

# create snapshop (tested)

curl -X POST "https://api.serverspace.io/api/v1/servers/l2s1029043/snapshots" \
-H "Content-Type: application/json" \
-H "X-API-KEY: $MY_API_KEY" \
-d '{"name": "test65"}' | json_pp

# delete snapshop (tested, no correct answer, but snap is deleted)

curl -X DELETE "https://api.serverspace.io/api/v1/servers/l2s1029043/snapshots/3443" \
     -H "X-API-KEY: $MY_API_KEY" \
     -H "Content-Type: application/json" \
     | json_pp

# revert to snapshop (tested)

curl -X POST "https://api.serverspace.io/api/v1/servers/l2s1029043/snapshots/3442/rollback" \
-H "Content-Type: application/json" \
-H "X-API-KEY: $MY_API_KEY" \
-d '{}' \
| json_pp
