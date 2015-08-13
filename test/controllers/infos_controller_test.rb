require 'test_helper'

class InfosControllerTest < ActionController::TestCase
  setup do
    @info = infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create info" do
    assert_difference('Info.count') do
      post :create, info: { comp_address: @info.comp_address, comp_email: @info.comp_email, comp_name: @info.comp_name, comp_phone: @info.comp_phone, comp_social: @info.comp_social, comp_web: @info.comp_web }
    end

    assert_redirected_to info_path(assigns(:info))
  end

  test "should show info" do
    get :show, id: @info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @info
    assert_response :success
  end

  test "should update info" do
    patch :update, id: @info, info: { comp_address: @info.comp_address, comp_email: @info.comp_email, comp_name: @info.comp_name, comp_phone: @info.comp_phone, comp_social: @info.comp_social, comp_web: @info.comp_web }
    assert_redirected_to info_path(assigns(:info))
  end

  test "should destroy info" do
    assert_difference('Info.count', -1) do
      delete :destroy, id: @info
    end

    assert_redirected_to infos_path
  end
end
