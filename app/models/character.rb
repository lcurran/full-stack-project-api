class Character < ActiveRecord::Base
  belongs_to :user
  has_many :character_stats, dependent: :destroy
  has_many :stats, through: :character_stats
  has_many :character_skills, dependent: :destroy
  has_many :skills, through: :character_skills
  has_many :character_spells, dependent: :destroy
  has_many :spells, through: :character_spells
  has_many :character_jobs, dependent: :destroy
  has_many :jobs, through: :character_jobs
end
