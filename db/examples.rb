# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'test', password: 'test')

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

def character_params
  {
    user_id: '1',
    name: 'Mal Reynolds',
    race: 'Human',
    deity: 'open skies',
    alignment: 'Chaotic Good',
    currency: '142.50',
    age: '31',
    gender: 'm'
  }
end

Character.create!(character_params)

Character.create!(user_id: '1', name: 'Wash')
Character.create!(user_id: '1', name: 'Zoe')
Character.create!(user_id: '1', name: 'River')

CharacterStat.create!(stat_id: 1, character_id: 1, stat_value: 15)
CharacterStat.create!(stat_id: 2, character_id: 1, stat_value: 17)
CharacterStat.create!(stat_id: 3, character_id: 1, stat_value: 13)
CharacterStat.create!(stat_id: 4, character_id: 1, stat_value: 12)
CharacterStat.create!(stat_id: 5, character_id: 1, stat_value: 18)
CharacterStat.create!(stat_id: 6, character_id: 1, stat_value: 14)
CharacterStat.create!(stat_id: 7, character_id: 1, stat_value: 15)

CharacterSkill.create!(skill_id: 1, character_id: 1, skill_value: 5)
CharacterSkill.create!(skill_id: 10, character_id: 1, skill_value: 7)
CharacterSkill.create!(skill_id: 15, character_id: 1, skill_value: 10)
CharacterSkill.create!(skill_id: 20, character_id: 1, skill_value: 8)

CharacterSpell.create!(spell_id: 57, character_id: 1)
CharacterSpell.create!(spell_id: 20, character_id: 1)
CharacterSpell.create!(spell_id: 1, character_id: 1)
CharacterSpell.create!(spell_id: 100, character_id: 1)
