# 
class CharacterSkillSerializer < ActiveModel::Serializer
  attributes :id,
             :character,
             :skill,
             :skill_value,
             :character_id,
             :skill_id
  has_one :character
  has_one :skill
end
