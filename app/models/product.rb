class Product < ActiveRecord::Base
  attr_accessible :gender, :image_url1, :image_url2, :image_url3, :image_url4, :in_stock, :price, :product_category, :product_detail, :product_name
end
