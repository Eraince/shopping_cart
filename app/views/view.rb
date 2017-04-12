

module View

	def self.list_product(products)
		puts "Available products"
		puts "product_id   title    price   available_inventory"
		puts "--------------------------------------------------"
		products.each do |product|
			puts "#{product.id}          #{product.title}     #{product.price}     #{product.available_inventory}"
		end
	end

	def self.list_history(histories)
		puts "Purchase History"
		puts "product_id     number     total"
		puts "-------------------------------"
		histories.each do |history|
			product = Product.find(history.product_id)
			puts "#{history.product_id}    #{product.title}   #{history.number}    #{history.total}"
		end
	end

	def self.list_cart(carts)
		puts "Shopping Cart"
		puts "product_id       title   number      total"
		puts "-----------------------------------"
		carts.each do |cart|
			product = Product.find(cart.product_id)
			puts "#{product.id}   #{product.title}  #{cart.number}    #{cart.total}"
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
		puts "need to be finished."
	end
	
end