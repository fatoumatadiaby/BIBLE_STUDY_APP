class Verse < ActiveRecord::Base
    has_many :prayers
    has_many :interpretations
end
