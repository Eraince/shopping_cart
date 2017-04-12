

module View

	def self.list_product(products)
		puts "Available products"
		puts "product_id   title    price   available_inventory"
		puts "--------------------------------------------------"
		products.each do |product|
			puts "#{product.id}          #{product.title}     #{product.price}     #{product.available_inventory}"
		end
	end

	def self.list_history(hitories)
		puts "Purchase History"
		puts "product_id     number     total"
		puts "-------------------------------"
		histories.each do |history|
			puts "#{history.product_id}    #{history.number}    #{history.total}"
		end
	end

	def self.list_cart(carts)
		puts "Shopping Cart"
		puts "product_id       number      total"
		puts "-----------------------------------"
		carts.each do |history|
			puts "#{history.product_id}    #{history.number}    #{history.total}"
		end
	end

	def self.out_of_stock(product_id)
		product = Product.find(product_id)
		puts "Sorry, we don't have enough stock for #{product.title}."
	end

	def self.receipt(product_id,number,total)
		product = Product.find(product_id)
		puts "Congratulations! You just spent $#{total} to buy #{number} #{product.title}(s)."
	end

	def self.add_to_cart(product_id,number)
		product = Product.find(product_id)
		puts "You succesfully added #{number} #{product.title}(s)."
	end

	def self.delete_from_cart(product_id,number)
		product = Product.find(product_id)
		puts "You succesfully deleted #{number} #{product.title}(s)."
	end

	def self.help

	end
	
end