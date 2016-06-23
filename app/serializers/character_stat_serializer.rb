class CharacterStatSerializer < ActiveModel::Serializer
  attributes :id, :character, :stat, :stat_value, :saving_throw
  has_one :character
  has_one :stat
end
