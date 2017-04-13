# this module have all the function realted to product
require_relative '../models/product'


module ProductController
	def self.show
		products = Product.all
		View.list_product(products)
	end

	def self.update_inventory(product_id,number)
		product = Product.find(product_id)
		product.available_inventory -= number
		product.save
	end
end