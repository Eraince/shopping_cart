

module View

	def self.list_product(products)
		puts "                          Available products"
		puts "---------------------------------------------------------------------------"
		puts "product_id       title                        price     available_inventory"
		puts "---------------------------------------------------------------------------"
		products.each do |product|
			puts "    #{product.id}      #{product.title.ljust(30)}     #{product.price.to_s.ljust(10)}      #{product.available_inventory}"
		end
	end

	def self.list_history(histories)
		puts "                           Purchase History"
		puts "---------------------------------------------------------------------------"
		puts "product_id           title                   number        total"
		puts "---------------------------------------------------------------------------"
		histories.each do |history|
			product = Product.find(history.product_id)
			puts "    #{history.product_id}        #{product.title.ljust(30)}   #{history.number.to_s.ljust(10)}    #{history.total}"
		end
	end

	def self.list_cart(carts)
		puts "                             Shopping Cart"
		puts "---------------------------------------------------------------------------"
		puts "product_id           title                 number         total"
		puts "---------------------------------------------------------------------------"
		carts.each do |cart|
			product = Product.find(cart.product_id)
			puts "    #{product.id}        #{product.title.ljust(30)}  #{cart.number.to_s.ljust(10)}    #{cart.total}"
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

	def self.invalid_input
		puts "Invalid product_id. Check the product_id by check the product list."
	end

	def self.help
		command_menu = <<-MENU
    	products 
         --list all the products we have with detailed information on unit price, inventory,and title.
    	carts
    	 --list all the products in your shopping carts.
    	history 
    	 --list all the information about your past purchasing history.
    	add product_id number
         --add products to your shopping cart with the product_id and the amount you want to add to your cart.
    	buy
    	 --buy all the products in your shopping cart.
    	remove product_id number
    	 --remove the product from your cart with the product_id and the amount you want to remove from your cart.
    	help
         --will provide you with this menu.
    MENU
    puts command_menu
	end
	
end