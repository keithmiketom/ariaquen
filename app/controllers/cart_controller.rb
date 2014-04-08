class CartController < ApplicationController
before_filter :authenticate_user!

  def add
    id = params[:id]
    
    cart = session[:cart] ||= {}
    cart[id] = (cart[id] || 0) + 1
    redirect_to :action => :index
  end
  

  def index
    @cart = session[:cart] || {}
  end
  
  def remove 
    id = params[:id] 
    cart = session[:cart] 
    cart.delete id 
    redirect_to :action => :index 
 end
 
 def clearCart 
   session[:cart] = nil 
   redirect_to :action => :index 
 end

  def change
    cart = session[:cart]
    id = params[:id];
    quantity = params[:quantity].to_i
    if cart and cart[id]
    unless quantity <= 0
    cart[id] = quantity
  else
    cart.delete id
  end
 
  end
  
  redirect_to :action => :index

  end

  def checkout
    flash[:notice] = "CHECKOUT IS NOT IMPLEMENTED YET!!!"
    redirect_to :action => :index
  end
  
 def createOrder 

 @user = User.find(current_user.id) 

 @order = @user.orders.build(:order_date => DateTime.now) 

 @order.ip_address = request.remote_ip

 @order.save 

 @cart = session[:cart] || {} 

 @cart.each do | id, quantity | 

 product = Product.find_by_id(id) 

 @orderproduct = @order.orderproducts.build(:product_id => product.id, :product_name => product.product_name, :product_detail => product.product_detail, :quantity => quantity, :price => product.price) 

 @orderproduct.save 
 
 session[:cart] = nil
  @cart = {}

 end 

end

end

