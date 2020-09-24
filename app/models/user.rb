class User < ApplicationRecord
    validate :user_id, presence => true 
    validate :title, presence => true 

    accepts_nested_attributes_for :accounts 
end
