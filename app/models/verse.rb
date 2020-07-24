class Verse < ActiveRecord::Base
   has_many :journals
   
    validates :book_name, presence: true
    validates :chapter_number, presence: true 
    validates :verse_number, presence: true
    validates :verse, presence: true
end
