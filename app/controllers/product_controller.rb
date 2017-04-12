require_relative '../models/product'


module ProductController
	def self.show
		products = Product.all
		View.list_product(products)
	end
end