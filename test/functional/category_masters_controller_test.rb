require 'test_helper'

class CategoryMastersControllerTest < ActionController::TestCase
  setup do
    @category_master = category_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:category_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category_master" do
    assert_difference('CategoryMaster.count') do
      post :create, category_master: { AK_Status: @category_master.AK_Status, AK_Sub_Status: @category_master.AK_Sub_Status, Actioncode: @category_master.Actioncode, Category: @category_master.Category, Colorname: @category_master.Colorname, ImageURL: @category_master.ImageURL, Key: @category_master.Key, Sub_Cat: @category_master.Sub_Cat }
    end

    assert_redirected_to category_master_path(assigns(:category_master))
  end

  test "should show category_master" do
    get :show, id: @category_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category_master
    assert_response :success
  end

  test "should update category_master" do
    put :update, id: @category_master, category_master: { AK_Status: @category_master.AK_Status, AK_Sub_Status: @category_master.AK_Sub_Status, Actioncode: @category_master.Actioncode, Category: @category_master.Category, Colorname: @category_master.Colorname, ImageURL: @category_master.ImageURL, Key: @category_master.Key, Sub_Cat: @category_master.Sub_Cat }
    assert_redirected_to category_master_path(assigns(:category_master))
  end

  test "should destroy category_master" do
    assert_difference('CategoryMaster.count', -1) do
      delete :destroy, id: @category_master
    end

    assert_redirected_to category_masters_path
  end
end
