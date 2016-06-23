class CharacterSkillSerializer < ActiveModel::Serializer
  attributes :id, :character, :skill, :value
  has_one :character
  has_one :skill
end
