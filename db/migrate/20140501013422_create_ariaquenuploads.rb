class CreateAriaquenuploads < ActiveRecord::Migration
  def change
    create_table :ariaquenuploads do |t|
      t.string :item1
      t.string :item2
      t.string :item3
      t.string :uploadedimage

      t.timestamps
    end
  end
end
