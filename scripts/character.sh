
curl --include --request POST http://localhost:3000/create-character \
  --header "Content-Type: application/json" \
  --data '{
    "character":{
      "user_id": "1"
    }
  }'

  curl --include --request PATCH http://localhost:3000/edit-character/1 \
    --header "Content-Type: application/json" \
    --data '{
      "character": {
        "name": "Wash"
      }
    }'

curl --include --request DELETE http://localhost:3000/delete-character/1
