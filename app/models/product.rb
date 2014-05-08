class Product < ActiveRecord::Base
  # A Product MUST have a name
  validates :name, presence: true
  
end
