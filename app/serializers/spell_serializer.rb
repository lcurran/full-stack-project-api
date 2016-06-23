class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :subschool, :descriptor, :spell_level
end
