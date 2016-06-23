class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :school
      t.string :subschool
      t.string :descriptor
      t.integer :spell_level

      t.timestamps null: false
    end
  end
end
