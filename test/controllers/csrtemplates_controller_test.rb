require 'test_helper'

class CsrtemplatesControllerTest < ActionController::TestCase
  setup do
    @csrtemplate = csrtemplates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:csrtemplates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create csrtemplate" do
    assert_difference('Csrtemplate.count') do
      post :create, csrtemplate: { c: @csrtemplate.c, cn: @csrtemplate.cn, description: @csrtemplate.description, email: @csrtemplate.email, l: @csrtemplate.l, name: @csrtemplate.name, o: @csrtemplate.o, ou: @csrtemplate.ou, s: @csrtemplate.s }
    end

    assert_redirected_to csrtemplate_path(assigns(:csrtemplate))
  end

  test "should show csrtemplate" do
    get :show, id: @csrtemplate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @csrtemplate
    assert_response :success
  end

  test "should update csrtemplate" do
    patch :update, id: @csrtemplate, csrtemplate: { c: @csrtemplate.c, cn: @csrtemplate.cn, description: @csrtemplate.description, email: @csrtemplate.email, l: @csrtemplate.l, name: @csrtemplate.name, o: @csrtemplate.o, ou: @csrtemplate.ou, s: @csrtemplate.s }
    assert_redirected_to csrtemplate_path(assigns(:csrtemplate))
  end

  test "should destroy csrtemplate" do
    assert_difference('Csrtemplate.count', -1) do
      delete :destroy, id: @csrtemplate
    end

    assert_redirected_to csrtemplates_path
  end
end
