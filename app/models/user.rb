class User < ApplicationRecord
    
  validates :title, :presence => true 
  validates :tags, :length => {:maximum => 5}
end
