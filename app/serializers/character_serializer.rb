class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :deity, :alignment, :gender, :age, :currency, :character_stats
  has_one :user
end
