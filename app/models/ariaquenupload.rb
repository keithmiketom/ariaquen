class Ariaquenupload < ActiveRecord::Base
  attr_accessible :item1, :item2, :item3, :uploadedimage
  
    mount_uploader :lookbookimage, AriaquenUploader
    
end
