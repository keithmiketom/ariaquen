class Orderproduct < ActiveRecord::Base
  belongs_to :order
  attr_accessible :price, :product_detail, :product_id, :product_name, :quantity
 
  def full_price
    price * quantity
  end

  
end