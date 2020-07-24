class Journal < ActiveRecord::Base
    belongs_to :user
    belongs_to :verse

    validates :title, presence: true
    validates :date, presence: true 
    validates :prayer, presence: true
    validates :interpretation, presence: true
end
