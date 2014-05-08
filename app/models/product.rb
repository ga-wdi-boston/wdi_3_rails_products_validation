class Product < ActiveRecord::Base

  CATEGORIES = ['Apparel', 'Kitchen', 'Entertainment', 'Software']
  
  # A Product MUST have a name
  validates :name, presence: true
  # A Product name MUST be at least 3 characters.
  validates :name, length: { minimum: 3}
  # A Product name MUST be unique
  validates :name, uniqueness: true
  # The price MUST be a number
  # validates :price, numericality: true
  # The price MUST be of the format that 'matches' the regular expression, regex.
  validates :price, format: { :with => /\A\d+(\.\d{2})?\z/, message: 'Must be a zero or more digits, a period, followed by two digits' }
  # A category must be one the above
  validates :category, inclusion: { in: CATEGORIES }
  
end
