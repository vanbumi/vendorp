require 'test_helper'

class VendorCatsControllerTest < ActionController::TestCase
  setup do
    @vendor_cat = vendor_cats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vendor_cats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vendor_cat" do
    assert_difference('VendorCat.count') do
      post :create, vendor_cat: { title: @vendor_cat.title }
    end

    assert_redirected_to vendor_cat_path(assigns(:vendor_cat))
  end

  test "should show vendor_cat" do
    get :show, id: @vendor_cat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vendor_cat
    assert_response :success
  end

  test "should update vendor_cat" do
    patch :update, id: @vendor_cat, vendor_cat: { title: @vendor_cat.title }
    assert_redirected_to vendor_cat_path(assigns(:vendor_cat))
  end

  test "should destroy vendor_cat" do
    assert_difference('VendorCat.count', -1) do
      delete :destroy, id: @vendor_cat
    end

    assert_redirected_to vendor_cats_path
  end
end
