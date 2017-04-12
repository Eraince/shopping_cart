class History < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :product
end
