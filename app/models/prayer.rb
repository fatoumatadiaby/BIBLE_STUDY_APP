class Prayer < ActiveRecord::Base
    belongs_to :user
    belongs_to :verse
end
