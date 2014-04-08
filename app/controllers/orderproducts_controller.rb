class OrderproductsController < ApplicationController
  before_filter :ensure_admin
  def index
  end

  def show
  end

  def new
  end

  def edit
  end
  
  def ensure_admin
    unless current_user && current_user.admin?
      render :text => "Access Error Message", :status => :unauthorized 
    end
  end
  
end
