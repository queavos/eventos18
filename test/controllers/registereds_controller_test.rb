require 'test_helper'

class RegisteredsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registered = registereds(:one)
  end

  test "should get index" do
    get registereds_url
    assert_response :success
  end

  test "should get new" do
    get new_registered_url
    assert_response :success
  end

  test "should create registered" do
    assert_difference('Registered.count') do
      post registereds_url, params: { registered: { checked: @registered.checked, event_id: @registered.event_id, regDate: @registered.regDate, status: @registered.status, user_id: @registered.user_id } }
    end

    assert_redirected_to registered_url(Registered.last)
  end

  test "should show registered" do
    get registered_url(@registered)
    assert_response :success
  end

  test "should get edit" do
    get edit_registered_url(@registered)
    assert_response :success
  end

  test "should update registered" do
    patch registered_url(@registered), params: { registered: { checked: @registered.checked, event_id: @registered.event_id, regDate: @registered.regDate, status: @registered.status, user_id: @registered.user_id } }
    assert_redirected_to registered_url(@registered)
  end

  test "should destroy registered" do
    assert_difference('Registered.count', -1) do
      delete registered_url(@registered)
    end

    assert_redirected_to registereds_url
  end
end
