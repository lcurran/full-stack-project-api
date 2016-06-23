class CharacterStatSerializer < ActiveModel::Serializer
  attributes :id, :character, :stat, :value
  has_one :character
  has_one :stat
end
