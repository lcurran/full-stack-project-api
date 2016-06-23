class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :deity, :alignment, :gender, :age, :currency
  has_one :user
end
