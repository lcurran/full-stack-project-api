class CreateCharacterSpells < ActiveRecord::Migration
  def change
    create_table :character_spells do |t|
      t.references :character, index: true, foreign_key: true
      t.references :spell, index: true, foreign_key: true
      t.string :damage_modifier

      t.timestamps null: false
    end
  end
end
