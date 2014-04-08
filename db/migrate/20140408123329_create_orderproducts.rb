class CreateOrderproducts < ActiveRecord::Migration
  def change
    create_table :orderproducts do |t|
      t.integer :product_id
      t.string :product_name
      t.string :product_detail
      t.integer :quantity
      t.decimal :price
      t.references :order

      t.timestamps
    end
    add_index :orderproducts, :order_id
  end
end
