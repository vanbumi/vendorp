require 'test_helper'

class MainslidesControllerTest < ActionController::TestCase
  setup do
    @mainslide = mainslides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mainslides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mainslide" do
    assert_difference('Mainslide.count') do
      post :create, mainslide: { descrip: @mainslide.descrip, title: @mainslide.title }
    end

    assert_redirected_to mainslide_path(assigns(:mainslide))
  end

  test "should show mainslide" do
    get :show, id: @mainslide
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mainslide
    assert_response :success
  end

  test "should update mainslide" do
    patch :update, id: @mainslide, mainslide: { descrip: @mainslide.descrip, title: @mainslide.title }
    assert_redirected_to mainslide_path(assigns(:mainslide))
  end

  test "should destroy mainslide" do
    assert_difference('Mainslide.count', -1) do
      delete :destroy, id: @mainslide
    end

    assert_redirected_to mainslides_path
  end
end
