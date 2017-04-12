require_relative '../models/cart'
require_relative '../models/product'

module CartController

	def self.show
		carts = Cart.all?
		View.list_cart(carts)
	end

	def self.buy
		carts = Cart.all
		carts.each do |cart|
			product = Product.find(cart.product_id)
			if product.available_inventory < cart.number
				View.out_of_stock(product_id)
			else
				total = product.price * number
				HistoryController.add_history(product.id,cart.number,total)
				ProductController.update_inventory(product.id,cart.number)
				Cart.destroy(cart.id)
			end
		end
	end

	def self.add(product_id,number)
		product = Product.find(product_id)
		inventory = product.available_inventory
		if inventory < number
			View,out_of_stock(product_id)
		else
			total = product.price * number
			if Cart.exists?(product_id: product_id)
				cart = Cart.find_by(product_id: product_id)
				cart.number += number
				cart.total += total
				cart.save
			else
				Cart.create(product_id: product_id, number: number, total: total)
			end
			View.add_to_cart(product_id,number)
		end
	end

	def self.remove(product_id,number)
		cart = Cart.find_by(product_id: product_id)
		if number >= cart.number
			Cart.destroy(cart.id)
		else
			cart.number -= number
			cart.save
		end
		View.delete_from_cart
	end


end