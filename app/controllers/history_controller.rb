require_relative '../models/history'

module HistoryController
	def self.show
		histories = History.all
		View.list_history(histories)
	end

	def self.add_history(product_id,number,total)
		new_history = History.create({product_id: product_id, number: number, total: total})
		View.receipt(product_id,number,total)
	end
end
