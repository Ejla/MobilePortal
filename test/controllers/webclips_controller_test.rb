require 'test_helper'

class WebclipsControllerTest < ActionController::TestCase
  setup do
    @webclip = webclips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:webclips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create webclip" do
    assert_difference('Webclip.count') do
      post :create, webclip: { page_id: @webclip.page_id, description: @webclip.description, link: @webclip.link, name: @webclip.name, order: @webclip.order }
    end

    assert_redirected_to webclip_path(assigns(:webclip))
  end

  test "should show webclip" do
    get :show, id: @webclip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @webclip
    assert_response :success
  end

  test "should update webclip" do
    patch :update, id: @webclip, webclip: { page_id: @webclip.page_id, description: @webclip.description, link: @webclip.link, name: @webclip.name, order: @webclip.order }
    assert_redirected_to webclip_path(assigns(:webclip))
  end

  test "should destroy webclip" do
    assert_difference('Webclip.count', -1) do
      delete :destroy, id: @webclip
    end

    assert_redirected_to webclips_path
  end
end
