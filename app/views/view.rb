

module View

	def self.list_product(products)
		puts "Available products"
		puts "product_id   title    price   available_inventory"
		puts "--------------------------------------------------"
		products.each do |product|
			puts "#{product.id}          #{product.title}     #{product.price}     #{product.available_inventory}"
		end
	end
	
end