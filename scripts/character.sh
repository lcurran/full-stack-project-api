
curl --include --request POST http://localhost:3000/character_jobs \
  --header "Content-Type: application/json" \
  --data '{
    "character_job":{
      "character_id": "1",
      "job_id": "5"
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
