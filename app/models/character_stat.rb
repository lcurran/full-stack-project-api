class CharacterStat < ActiveRecord::Base
  belongs_to :character
  belongs_to :stat
end
