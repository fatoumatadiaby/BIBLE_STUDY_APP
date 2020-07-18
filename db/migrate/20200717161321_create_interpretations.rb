class CreateInterpretations < ActiveRecord::Migration
  def change
    create_table :interpretations do |t|
      t.date :date
      t.integer :user_id
      t.integer :verse_id
      t.timestamps null: false
    end
  end
end
