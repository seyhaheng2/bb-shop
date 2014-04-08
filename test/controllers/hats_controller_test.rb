require 'test_helper'

class HatsControllerTest < ActionController::TestCase
  setup do
    @hat = hats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hat" do
    assert_difference('Hat.count') do
      post :create, hat: { description: @hat.description, image: @hat.image, name: @hat.name, price: @hat.price }
    end

    assert_redirected_to hat_path(assigns(:hat))
  end

  test "should show hat" do
    get :show, id: @hat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hat
    assert_response :success
  end

  test "should update hat" do
    patch :update, id: @hat, hat: { description: @hat.description, image: @hat.image, name: @hat.name, price: @hat.price }
    assert_redirected_to hat_path(assigns(:hat))
  end

  test "should destroy hat" do
    assert_difference('Hat.count', -1) do
      delete :destroy, id: @hat
    end

    assert_redirected_to hats_path
  end
end
