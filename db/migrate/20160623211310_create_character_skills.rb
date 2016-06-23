class CreateCharacterSkills < ActiveRecord::Migration
  def change
    create_table :character_skills do |t|
      t.references :character, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true
      t.integer :value

      t.timestamps null: false
    end
  end
end
