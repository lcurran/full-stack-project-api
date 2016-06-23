class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :primary_stat

      t.timestamps null: false
    end
  end
end
