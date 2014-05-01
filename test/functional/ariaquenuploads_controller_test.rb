require 'test_helper'

class AriaquenuploadsControllerTest < ActionController::TestCase
  setup do
    @ariaquenupload = ariaquenuploads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ariaquenuploads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ariaquenupload" do
    assert_difference('Ariaquenupload.count') do
      post :create, ariaquenupload: { item1: @ariaquenupload.item1, item2: @ariaquenupload.item2, item3: @ariaquenupload.item3, uploadedimage: @ariaquenupload.uploadedimage }
    end

    assert_redirected_to ariaquenupload_path(assigns(:ariaquenupload))
  end

  test "should show ariaquenupload" do
    get :show, id: @ariaquenupload
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ariaquenupload
    assert_response :success
  end

  test "should update ariaquenupload" do
    put :update, id: @ariaquenupload, ariaquenupload: { item1: @ariaquenupload.item1, item2: @ariaquenupload.item2, item3: @ariaquenupload.item3, uploadedimage: @ariaquenupload.uploadedimage }
    assert_redirected_to ariaquenupload_path(assigns(:ariaquenupload))
  end

  test "should destroy ariaquenupload" do
    assert_difference('Ariaquenupload.count', -1) do
      delete :destroy, id: @ariaquenupload
    end

    assert_redirected_to ariaquenuploads_path
  end
end
