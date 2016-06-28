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

CharacterStat.create!(stat_id: 1,
                      character_id: 1,
                      stat_value: 15,
                      saving_throw: 3)

CharacterSkill.create!(skill_id: 1, character_id: 1, skill_value: 15)
