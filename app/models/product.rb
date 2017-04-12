class Product < ActiveRecord::Base
  # Remember to create a migration!
  has_many :histories
  has_many :carts
end
