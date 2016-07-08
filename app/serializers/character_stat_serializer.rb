# 
class CharacterStatSerializer < ActiveModel::Serializer
  attributes :id,
             :character,
             :stat,
             :stat_value,
             :saving_throw,
             :stat_id,
             :character_id
  has_one :character
  has_one :stat
end
