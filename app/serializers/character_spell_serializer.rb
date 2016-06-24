class CharacterSpellSerializer < ActiveModel::Serializer
  attributes :id, :damage_modifier, :character, :spell
  has_one :character
  has_one :spell
end
