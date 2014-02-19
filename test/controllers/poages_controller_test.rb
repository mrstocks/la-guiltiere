require 'test_helper'

class PoagesControllerTest < ActionController::TestCase
  setup do
    @poage = poages(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poages)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poage" do
    assert_difference('Poage.count') do
      post :create, poage: { name: @poage.name, slug: @poage.slug }
    end

    assert_redirected_to poage_path(assigns(:poage))
  end

  test "should show poage" do
    get :show, id: @poage
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poage
    assert_response :success
  end

  test "should update poage" do
    patch :update, id: @poage, poage: { name: @poage.name, slug: @poage.slug }
    assert_redirected_to poage_path(assigns(:poage))
  end

  test "should destroy poage" do
    assert_difference('Poage.count', -1) do
      delete :destroy, id: @poage
    end

    assert_redirected_to poages_path
  end
end
