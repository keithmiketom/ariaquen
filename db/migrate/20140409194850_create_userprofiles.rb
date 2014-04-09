class CreateUserprofiles < ActiveRecord::Migration
  def change
    create_table :userprofiles do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :address
      t.string :phone_number
      t.string :user_image_url
      t.date :date_of_birth
      t.references :user

      t.timestamps
    end
    add_index :userprofiles, :user_id
  end
end
