class User < ApplicationRecord
    validates :user_id, presence => true 
    validates :title, presence => true 

    accepts_nested_attributes_for :accounts 
end
