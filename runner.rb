require_relative 'config/environment'
require_relative 'app/controllers/cart_controller'
require_relative 'app/controllers/product_controller'
require_relative 'app/controllers/history_controller'
require_relative 'app/views/view'

# Do not log database activity when running our application
ActiveRecord::Base.logger = nil

include View
include ProductController
if ARGV.any?
	first_arg = ARGV[0]
	option = ARGV[1]

	case first_arg
	when "products"
		ProductController.show
	end

	# when "history"




end