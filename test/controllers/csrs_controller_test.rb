require 'test_helper'

class CsrsControllerTest < ActionController::TestCase
  setup do
    @csr = csrs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csrs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csr" do
    assert_difference('Csr.count') do
      post :create, csr: { content: @csr.content, key_id: @csr.key_id }
    end

    assert_redirected_to csr_path(assigns(:csr))
  end

  test "should show csr" do
    get :show, id: @csr
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @csr
    assert_response :success
  end

  test "should update csr" do
    patch :update, id: @csr, csr: { content: @csr.content, key_id: @csr.key_id }
    assert_redirected_to csr_path(assigns(:csr))
  end

  test "should destroy csr" do
    assert_difference('Csr.count', -1) do
      delete :destroy, id: @csr
    end

    assert_redirected_to csrs_path
  end
end
