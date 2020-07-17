class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :book_name
      t.string :chapter_number
      t.string :verse_number
      t.string :verse
      t.timestamps null: false
    end
  end
end
