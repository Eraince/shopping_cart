require_relative 'config/environment'
require_relative 'app/controllers/cart_controller'
require_relative 'app/controllers/product_controller'
require_relative 'app/controllers/history_controller'
require_relative 'app/views/view'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil

include View
include ProductController
include HistoryController
include CartController

if ARGV.any?
	first_arg = ARGV[0]
	id = ARGV[1].to_i
	number = ARGV[2].to_i

	case first_arg
	when "products"
		ProductController.show
	

	when "history"
		HistoryController.show

	when "carts"
		CartController.show
		

	when "buy"
		CartController.buy

	when "add"
		CartController.add(id,number)

	when "remove"
		CartController.remove(id,number)

	when "help"
		View.help
	end

end