class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.references :user, index: true, foreign_key: true
      t.string :name
      t.string :race
      t.string :deity
      t.string :alignment
      t.string :gender
      t.integer :age
      t.decimal :currency

      t.timestamps null: false
    end
  end
end
