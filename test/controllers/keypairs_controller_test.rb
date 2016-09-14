require 'test_helper'

class KeypairsControllerTest < ActionController::TestCase
  setup do
    @keypair = keypairs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:keypairs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create keypair" do
    assert_difference('Keypair.count') do
      post :create, keypair: { name: @keypair.name, privatekey: @keypair.privatekey, publickey: @keypair.publickey }
    end

    assert_redirected_to keypair_path(assigns(:keypair))
  end

  test "should show keypair" do
    get :show, id: @keypair
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @keypair
    assert_response :success
  end

  test "should update keypair" do
    patch :update, id: @keypair, keypair: { name: @keypair.name, privatekey: @keypair.privatekey, publickey: @keypair.publickey }
    assert_redirected_to keypair_path(assigns(:keypair))
  end

  test "should destroy keypair" do
    assert_difference('Keypair.count', -1) do
      delete :destroy, id: @keypair
    end

    assert_redirected_to keypairs_path
  end
end
