class ProductsController < ApplicationController
  # GET /products
  # GET /products.json

  helper_method :sort_column, :sort_direction
  
  def index
    @products = Product.search(params[:search]).order(sort_column + " " + sort_direction).paginate(:per_page => 2, :page => params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
      format.js # index.js.erb 
    end
  end
  

  # GET /products/1
  # GET /products/1.json
  def show
    @product = Product.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end
  
  def ensure_admin
    unless current_user && current_user.admin?
     render:text => "Access Error Message", :status => :unauthorized
    end
  end 

  def product_type
    @products = Product.find_all_by_product_type(params[:id])
    @product_type = params[:id]
    
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
  

  def product_category
    @products = Product.find_all_by_product_category(params[:id])
    @product_category = params[:id]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end


  def search
    @search_term = params[:q]
      st = "%#{params[:q]}%"
    @products = Product.where("name like ? or description like ?", st, st)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @items }
  end
end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = Product.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = Product.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: 'Product was successfully created.' }
        format.json { render json: @product, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
  
  def sort_column
    params[:sort] || "product_name"
  end
  
  def sort_direction
    params[:direction] || "asc"
  end




  
  def product_category
    @products = Product.find_all_by_product_category(params[:id])
    @product_category = params[:id]
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end
  
  def search_by_category
    @product = params[:product]
    @gender = params[:gender]
    @products = Product.where("product_category like ? and gender like ?", @product, @gender)
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end




end
