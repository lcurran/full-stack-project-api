class CharacterJobSerializer < ActiveModel::Serializer
  attributes :id, :level, :experience
  has_one :character
  has_one :job
end
