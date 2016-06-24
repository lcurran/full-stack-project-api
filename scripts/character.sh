
curl --include --request POST http://localhost:3000/characters \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=9de6be83ca86eb2a78373450fdb8fd71" \
  --data '{
    "character":{
      "user_id": "5",
      "name": "River Tam"
    }
  }'

  curl --include --request PATCH http://localhost:3000/character_spells/1 \
    --header "Content-Type: application/json" \
    --data '{
      "character_spell": {
          "damage_modifier": "12"
      }
    }'

curl --include --request DELETE http://localhost:3000/character_skills/1
