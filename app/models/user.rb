class User < ApplicationRecord
    
  validates :title, :presence => true 
  validates :tags, :length => {:maximum => 5}

  accepts_nested_attributes_for :ticket 
  accepts_nested_attributes_for :tag 
end
