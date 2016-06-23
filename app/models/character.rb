class Character < ActiveRecord::Base
  belongs_to :user
  has_many :character_stats, dependent: :destroy
  has_many :stats, through: :character_stats
end
