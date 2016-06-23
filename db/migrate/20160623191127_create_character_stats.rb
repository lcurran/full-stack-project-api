class CreateCharacterStats < ActiveRecord::Migration
  def change
    create_table :character_stats do |t|
      t.references :character, index: true, foreign_key: true
      t.references :stat, index: true, foreign_key: true
      t.integer :stat_value
      t.integer :saving_throw

      t.timestamps null: false
    end
  end
end
