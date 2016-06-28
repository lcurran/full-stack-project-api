class CharacterSkillSerializer < ActiveModel::Serializer
  attributes :id, :character, :skill, :skill_value
  has_one :character
  has_one :skill
end
