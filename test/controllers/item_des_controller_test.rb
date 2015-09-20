require 'test_helper'

class ItemDesControllerTest < ActionController::TestCase
  setup do
    @item_de = item_des(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_des)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_de" do
    assert_difference('ItemDe.count') do
      post :create, item_de: { title: @item_de.title, unit: @item_de.unit }
    end

    assert_redirected_to item_de_path(assigns(:item_de))
  end

  test "should show item_de" do
    get :show, id: @item_de
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_de
    assert_response :success
  end

  test "should update item_de" do
    patch :update, id: @item_de, item_de: { title: @item_de.title, unit: @item_de.unit }
    assert_redirected_to item_de_path(assigns(:item_de))
  end

  test "should destroy item_de" do
    assert_difference('ItemDe.count', -1) do
      delete :destroy, id: @item_de
    end

    assert_redirected_to item_des_path
  end
end
