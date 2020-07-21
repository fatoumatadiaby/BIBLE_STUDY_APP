class User < ActiveRecord::Base
   has_many :verses
    has_many :prayers, through: :verses
    has_many :interpretations, through: :verses
    
    has_secure_password
   
    validates :username, presence: true, uniqueness: true
 

end
