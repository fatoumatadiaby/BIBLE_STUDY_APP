class CreatePrayers < ActiveRecord::Migration
  def change
    create_table :prayers do |t|
      t.date :date
      t.integer :user_id
      t.integer :verse_id
      t.timestamps null: false
    end
  end
end
