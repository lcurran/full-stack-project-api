
curl --include --request POST http://localhost:3000/character_spells \
  --header "Content-Type: application/json" \
  --data '{
    "character_spell":{
      "character_id": "1",
      "spell_id": "5"
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
