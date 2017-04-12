class CreateProducts < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  		t.string :title, {null: false}
  		t.integer :available_inventory, {null: false}
  		t.decimal :price, {precision: 8, scale: 2, default: 0.00, null: false}

  		t.timestamps
  	end
  end
end
