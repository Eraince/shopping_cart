class CreateHistories < ActiveRecord::Migration
  def change
  	create_table :histories do |t|
  		t.integer :product_id, {null: false}
  		t.integer :number, {null: false}
  		t.decimal :total, {precision: 8, scale: 2, null: false}

  		t.timestamps
  	end
  end
end
