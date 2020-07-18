class User < ActiveRecord::Base
    has_secure_password
    has_many :verses
    has_many :prayers, through: :verses
    has_many :interpretations, through: :verses
    
    validates :username, presence: true, uniqueness: true
end
