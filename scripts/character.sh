
curl --include --request POST http://localhost:3000/create-character \
  --header "Content-Type: application/json" \
  --data '{
    "character":{
      "user_id": "1"
    }
  }'

  curl --include --request PATCH http://localhost:3000/character_stats/1 \
    --header "Content-Type: application/json" \
    --data '{
      "stat": {
          "value": "12",
          "stat_id": "2"
      }
    }'

curl --include --request DELETE http://localhost:3000/character_stats/1
