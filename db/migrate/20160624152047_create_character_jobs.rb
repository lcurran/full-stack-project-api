class CreateCharacterJobs < ActiveRecord::Migration
  def change
    create_table :character_jobs do |t|
      t.references :character, index: true, foreign_key: true
      t.references :job, index: true, foreign_key: true
      t.integer :level
      t.integer :experience

      t.timestamps null: false
    end
  end
end
