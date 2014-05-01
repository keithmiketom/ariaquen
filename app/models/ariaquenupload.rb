class Ariaquenupload < ActiveRecord::Base
  attr_accessible :item1, :item2, :item3, :uploadedimage
  
    mount_uploader :uploadedimage, AriaquenUploader
    
    belongs_to :products
end
