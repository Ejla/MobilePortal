require 'test_helper'

class Admin::PortalsControllerTest < ActionController::TestCase
  setup do
    @portal = admin_portals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_portals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_portal" do
    assert_difference('Admin::Portal.count') do
      post :create, admin_portal: { bg_css: @portal.bg_css, bg_image_id: @portal.bg_image_id, font: @portal.font, layout: @portal.layout, logo_image_id: @portal.logo_image_id, title: @portal.title }
    end

    assert_redirected_to admin_portal_path(assigns(:admin_portal))
  end

  test "should show admin_portal" do
    get :show, id: @portal
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @portal
    assert_response :success
  end

  test "should update admin_portal" do
    patch :update, id: @portal, admin_portal: { bg_css: @portal.bg_css, bg_image_id: @portal.bg_image_id, font: @portal.font, layout: @portal.layout, logo_image_id: @portal.logo_image_id, title: @portal.title }
    assert_redirected_to admin_portal_path(assigns(:admin_portal))
  end

  test "should destroy admin_portal" do
    assert_difference('Admin::Portal.count', -1) do
      delete :destroy, id: @portal
    end

    assert_redirected_to admin_portals_path
  end
end
