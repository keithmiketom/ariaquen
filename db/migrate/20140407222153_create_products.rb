class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :product_name
      t.string :product_detail
      t.decimal :price
      t.string :product_category
      t.boolean :in_stock
      t.string :gender
      t.string :image_url1
      t.string :image_url2
      t.string :image_url3
      t.string :image_url4

      t.timestamps
    end
  end
end
