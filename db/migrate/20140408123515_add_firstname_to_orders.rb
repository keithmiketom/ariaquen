class AddFirstnameToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :firstname, :string
  end
end
