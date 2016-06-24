class SpellSerializer < ActiveModel::Serializer
  attributes :id, :name, :school, :subschool, :descriptor, :spell_level, :casting_time, :range, :area, :effect, :targets, :duration, :saving_throw, :spell_resistence, :description
end
