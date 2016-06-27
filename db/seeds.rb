# This file should contain all the record creation needed to seed the database
# with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the
# db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

Stat.transaction do
  CSV.foreach 'data/stats.csv', headers: true do |stat|
    Stat.create(stat.to_hash)
  end
end

Skill.transaction do
  CSV.foreach 'data/skills.csv', headers: true do |skill|
    Skill.create(skill.to_hash)
  end
end

Job.transaction do
  CSV.foreach 'data/jobs.csv', headers: true do |job|
    Job.create(job.to_hash)
  end
end

spells_path = "#{Rails.root}/data/spells.json"
spells = JSON.parse(File.read(spells_path))

spells.each do |spell|
  Spell.create!(spell)
end
