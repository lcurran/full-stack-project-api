
curl --include --request POST http://localhost:3000/character-skills \
  --header "Content-Type: application/json" \
  --data '{
    "skills":{
      "user_id": "1",
      "name": "Wash"
    }
  }'

  curl --include --request PATCH http://localhost:3000/character_skills/1 \
    --header "Content-Type: application/json" \
    --data '{
      "character_skill": {
          "value": "12",
          "stat_id": "2"
      }
    }'

curl --include --request DELETE http://localhost:3000/character_skills/1
