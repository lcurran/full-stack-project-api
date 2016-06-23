class Skill < ActiveRecord::Base
  has_many :character_stats
  has_many :characters, through: :character_stats
end
