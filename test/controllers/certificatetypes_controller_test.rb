require 'test_helper'

class CertificatetypesControllerTest < ActionController::TestCase
  setup do
    @certificatetype = certificatetypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:certificatetypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create certificatetype" do
    assert_difference('Certificatetype.count') do
      post :create, certificatetype: { name: @certificatetype.name }
    end

    assert_redirected_to certificatetype_path(assigns(:certificatetype))
  end

  test "should show certificatetype" do
    get :show, id: @certificatetype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @certificatetype
    assert_response :success
  end

  test "should update certificatetype" do
    patch :update, id: @certificatetype, certificatetype: { name: @certificatetype.name }
    assert_redirected_to certificatetype_path(assigns(:certificatetype))
  end

  test "should destroy certificatetype" do
    assert_difference('Certificatetype.count', -1) do
      delete :destroy, id: @certificatetype
    end

    assert_redirected_to certificatetypes_path
  end
end
