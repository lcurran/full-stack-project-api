class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.string :school
      t.string :subschool
      t.string :descriptor
      t.string :spell_level
      t.string :casting_time
      t.string :range
      t.string :area
      t.string :effect
      t.string :targets
      t.string :duration
      t.string :saving_throw
      t.string :spell_resistence
      t.string :description

      t.timestamps null: false
    end
  end
end
