class CharacterSerializer < ActiveModel::Serializer
  attributes :id, :name, :race, :deity, :alignment, :gender, :age, :currency, :stats, :character_stats, :spells, :character_spells, :skills, :character_skills, :jobs, :character_jobs
  has_one :user
end
