class Product < ActiveRecord::Base
  attr_accessible :gender, :image_url1, :image_url2, :image_url3, :image_url4, :in_stock, :price, :product_category, :product_detail, :product_name

def self.search(search)
  if search
    where('product_name LIKE ?', "%#{search}%")
  else
    scoped
  end
end

end
