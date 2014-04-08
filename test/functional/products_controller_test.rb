require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { gender: @product.gender, image_url1: @product.image_url1, image_url2: @product.image_url2, image_url3: @product.image_url3, image_url4: @product.image_url4, in_stock: @product.in_stock, price: @product.price, product_category: @product.product_category, product_detail: @product.product_detail, product_name: @product.product_name }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { gender: @product.gender, image_url1: @product.image_url1, image_url2: @product.image_url2, image_url3: @product.image_url3, image_url4: @product.image_url4, in_stock: @product.in_stock, price: @product.price, product_category: @product.product_category, product_detail: @product.product_detail, product_name: @product.product_name }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
