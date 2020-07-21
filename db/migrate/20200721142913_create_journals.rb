class CreateJournals < ActiveRecord::Migration
  def change
    create_table :journals do |t|
      t.date :date
      t.string :interpretation
      t.string :prayer
      t.string :title
      t.string :user_id
      t.string :verse_id

      t.timestamps null: false
    end
  end
end
